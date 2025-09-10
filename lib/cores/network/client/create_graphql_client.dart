import 'dart:developer';

import 'package:event_handler/cores/cache/secure_storage_interactor.dart';
import 'package:event_handler/cores/network/client/graphql/__generated/mutation.graphql.dart';
import 'package:event_handler/cores/network/models/DataHolder.dart';
import 'package:event_handler/cores/network/models/auth_response.dart';
import 'package:event_handler/cores/utils/helper_functions.dart';
import 'package:event_handler/main.dart';
import 'package:event_handler/modules/authentication/provider/auth_provider.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'links/logger_link.dart';

/// Custom Link that always resolves the latest baseUrl
class DynamicHttpLink extends Link {
  final Future<String> Function() getBaseUrl;

  DynamicHttpLink(this.getBaseUrl);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    final url = await getBaseUrl();
    final httpLink = HttpLink(url);
    yield* httpLink.request(request, forward);
  }
}

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
        final auth = AuthResponse.fromJson(res.data!);

        await secureStorageInteractor.saveToken(auth.accessToken.token);
        await secureStorageInteractor.saveRefreshToken(auth.refreshToken.token);

        // Save session expiry date
        final sessionExpiryDate =
            HelperFunctions.getDateTimeFromLoginExpiryDate(
              auth.accessToken.expiresAt.toString(),
            );
        if (sessionExpiryDate != null) {
          await secureStorageInteractor.saveSessionExpiryDate(
            sessionExpiryDate,
          );
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

  final authLink = AuthLink(
    getToken: () async {
      final token = await secureStorageInteractor.token;
      log(":::The request token::: $token");
      return token != null ? "Bearer $token" : null;
    },
  );

  // Use DynamicHttpLink so each request always fetches the latest baseUrl
  final dynamicHttpLink = DynamicHttpLink(() async {
    final url = await genRef!.read(authProvider.notifier).getBaseUrl();
    log(":::Dynamic baseUrl::: $url");
    return url;
  });

  final links = Link.from([DedupeLink(), freshLink, loggerLink]).split(
    (request) => request.isMutation || request.isQuery,
    authLink.concat(dynamicHttpLink),
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

// GraphQLClient createGraphQLClient({
//   required DataHolder dataHolder,
//   required SecureStorageInteractor secureStorageInteractor,
// })
// {
//   late GraphQLClient client;
//
//   final loggerLink = LoggerLink();
//   final freshLink = FreshLink.oAuth2(
//     tokenStorage: InMemoryTokenStorage(),
//     shouldRefresh: (p0) => true,
//     refreshToken: (token, cl) async {
//       log("Refreshing token");
//
//       final res = await client.mutate$refreshToken();
//
//       if (res.data != null) {
//         AuthResponse auth = AuthResponse.fromJson(res.data!);
//
//         await secureStorageInteractor.saveToken(auth.accessToken.token);
//         await secureStorageInteractor.saveRefreshToken(auth.refreshToken.token);
//
//         // Save session expiry date
//         final sessionExpiryDate =
//             HelperFunctions.getDateTimeFromLoginExpiryDate(
//               auth.accessToken.expiresAt.toString(),
//             );
//         if (sessionExpiryDate != null) {
//           secureStorageInteractor.saveSessionExpiryDate(sessionExpiryDate);
//         }
//
//         dataHolder.token = auth.accessToken.token;
//         dataHolder.refreshToken = auth.refreshToken.token;
//
//         return OAuth2Token(
//           accessToken: auth.accessToken.token,
//           refreshToken: auth.refreshToken.token,
//         );
//       }
//
//       return null;
//     },
//   );
//
//   String baseUrl = "https://testing.mj25.rsvp/graphql";
//
//   final links = Link.from([DedupeLink(), freshLink, loggerLink]).split(
//     // This ensures that both queries and mutations pass through the auth and HTTP links
//     (request) => request.isMutation || request.isQuery,
//     AuthLink(
//       getToken: () async {
//         final token = await secureStorageInteractor.token;
//         log(":::The request token::: $token");
//         baseUrl = await genRef!.read(authProvider.notifier).getBaseUrl();
//         log(":::The request baseUrl::: $baseUrl");
//         return "Bearer $token";
//       },
//       // ).concat(HttpLink("https://wizard.mj25.rsvp/graphql")),
//     ).concat(HttpLink(baseUrl)),
//   );
//
//   client = GraphQLClient(
//     link: links,
//     cache: GraphQLCache(store: InMemoryStore()),
//     defaultPolicies: DefaultPolicies(
//       query: Policies(fetch: FetchPolicy.noCache),
//       watchQuery: Policies(fetch: FetchPolicy.cacheAndNetwork),
//       mutate: Policies(fetch: FetchPolicy.noCache),
//     ),
//   );
//
//   return client;
// }
