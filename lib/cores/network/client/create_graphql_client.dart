import 'dart:developer';

import 'package:event_handler/cores/cache/secure_storage_interactor.dart';
import 'package:event_handler/cores/network/client/graphql/__generated/mutation.graphql.dart';
import 'package:event_handler/cores/network/models/DataHolder.dart';
import 'package:event_handler/cores/network/models/auth_response.dart';
import 'package:event_handler/cores/utils/helper_functions.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'links/logger_link.dart';

GraphQLClient createGraphQLClient({
  required DataHolder dataHolder,
  required SecureStorageInteractor secureStorageInteractor,
}) {
  late GraphQLClient client;

  final loggerLink = LoggerLink();
  final freshLink = FreshLink.oAuth2(
    tokenStorage: InMemoryTokenStorage(),
    shouldRefresh: (p0) => true,
    refreshToken: (token, cl) async {
      log("Refreshing token");

      final res = await client.mutate$refreshToken();

      if (res.data != null) {
        AuthResponse auth = AuthResponse.fromJson(res.data!);

        await secureStorageInteractor.saveToken(auth.accessToken.token);
        await secureStorageInteractor.saveRefreshToken(auth.refreshToken.token);

        // Save session expiry date
        final sessionExpiryDate =
            HelperFunctions.getDateTimeFromLoginExpiryDate(
              auth.accessToken.expiresAt.toString(),
            );
        if (sessionExpiryDate != null) {
          secureStorageInteractor.saveSessionExpiryDate(sessionExpiryDate);
        }

        dataHolder.token = auth.accessToken.token;
        dataHolder.refreshToken = auth.refreshToken.token;

        return OAuth2Token(
          accessToken: auth.accessToken.token,
          refreshToken: auth.refreshToken.token,
        );
      }

      return null;
    },
  );

  final links = Link.from([DedupeLink(), freshLink, loggerLink]).split(
    // This ensures that both queries and mutations pass through the auth and HTTP links
    (request) => request.isMutation || request.isQuery,
    AuthLink(
      getToken: () async {
        final token = await secureStorageInteractor.token;
        log(":::The request token::: $token");
        return token;
      },
    ).concat(HttpLink("https://testing.mj25.rsvp/graphql")),
  );

  client = GraphQLClient(
    link: links,
    cache: GraphQLCache(store: InMemoryStore()),
    defaultPolicies: DefaultPolicies(
      query: Policies(fetch: FetchPolicy.noCache),
      watchQuery: Policies(fetch: FetchPolicy.cacheAndNetwork),
      mutate: Policies(fetch: FetchPolicy.noCache),
    ),
  );

  return client;
}
