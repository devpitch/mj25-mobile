import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

abstract class ApiClient {
  GraphQLClient get client;

  Future<QueryResult> query({
    required String query,
    Map<String, dynamic> variables = const {},
  });

  Future<QueryResult> mutation({
    required String query,
    Map<String, dynamic> variables = const {},
  });
}

@Injectable(as: ApiClient)
class ApiClientImpl implements ApiClient {
  ApiClientImpl(this._client);

  final GraphQLClient _client;
 
  @override
  GraphQLClient get client {
    return _client;
  }

  @override
  Future<QueryResult> query({
    required String query,
    Map<String, dynamic> variables = const {},
  }) {
    return _client.query(QueryOptions(
      document: gql(query),
      variables: variables,
    ));
  }

  @override
  Future<QueryResult> mutation({
    required String query,
    Map<String, dynamic> variables = const {},
  }) {
    return _client.mutate(MutationOptions(
      document: gql(query),
      variables: variables,
    ));
  }
}
