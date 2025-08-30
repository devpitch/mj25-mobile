import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:loggy/loggy.dart';

class LoggerLink extends Link {

@override
  Stream<Response> request(
    Request request, [
    NextLink? forward,
  ]) {
    Stream<Response> response = forward!(request).map((Response fetchResult) {
      final ioStreamedResponse =
          fetchResult.context.entry<HttpLinkResponseContext>();
      if (kDebugMode) {
        logDebug("Request: $request");
        logDebug("Response:${ioStreamedResponse?.toString() ?? "null"}");
      }
      return fetchResult;
    }).handleError((error) {
      // throw error;
    });

    return response;
  }

  LoggerLink();
}