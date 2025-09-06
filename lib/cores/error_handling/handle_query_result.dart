import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'handle_exception.dart';

Future<QueryResult<T?>> handleQueryResult<T>({
  required ValueGetter<Future<QueryResult<T>>> queryBuilder,
  bool showError = true,
}) async {
  try {
    final result = await queryBuilder();

    if (result.hasException && result.exception != null) {
      if (showError) {
        log(":::main error::: ${result.exception?.raw}");
        handleGraphQLError(exception: result.exception!);
      }
      throw result.exception!.raw?.firstOrNull; //TODO: handle this
    }
    return result;
  } catch (e) {
    rethrow;
  }
}
