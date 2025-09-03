import 'dart:developer';

import 'package:event_handler/cores/utils/rydmie_alerts.dart';
import 'package:event_handler/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:loggy/loggy.dart';

import '../utils/constants.dart';
import 'exception/generic_exception.dart';

const kErrorString = "Error";
const kGenericErrorString = "Please contact support, or try again later";

void handleGraphQLError({required OperationException? exception}) {
  if (exception == null) return;
  if (exception.graphqlErrors.isEmpty) {
    return;
  }

  logError("GraphQL error: ${exception.toString()}");

  //get first error string
  final error = GenericException(exception.graphqlErrors.firstErrorMessage);

  handleException(error);
}

/// [popUntilRouteName] is ignored if [onDismissTapped] was provided
Future<dynamic> handleException(
  GenericException exception, {
  VoidCallback? onDismissTapped,
  Iterable<String> popUntilRouteName = const [],
}) async {
  log(":::::: The exception is 1 $exception");
  final context = genRef!.read(globalBuildContextProvider);
  if (context == null) return null;
  log(":::::: The exception is 2");
  // final navigator = Navigator.of(context);

  //TODO: handle user unauthorized error e.g, logout user, clear cache, reset providers, etc

  if (exception.message == "Unauthenticated") {
    log("::::I entered the unauthorized block");
    _handleUnAuthorizedException(context);
    return null;
  }
  log(":::::: The exception is 3");
  final String description;
  final String title;

  title = kErrorString;
  description = exception.message ?? kGenericErrorString;
  log(":::::: The exception is 4");
  RydmieAlert.showError(context, title: title, message: description);
  log(":::::: The exception is 5");
  throw exception;
  // return null;
}

void _handleUnAuthorizedException(BuildContext context) async {
  //handle user unauthorized error e.g, logout user, clear cache, reset providers, etc

  // await AppConstants.genRef!.read(authProvider.notifier).logoutUser(context);
}

// proxy to avoid name clash with extension method
void _internal(
  BuildContext c,
  GenericException e, {
  VoidCallback? onDismissTapped,
  Iterable<String> popUntilRouteName = const [],
}) => handleException(
  // c,
  e,
  onDismissTapped: onDismissTapped,
  popUntilRouteName: popUntilRouteName,
);

extension WidgetsBindingHandleException on WidgetsBinding {
  /// If [onDissmissTapped] is provided, [popUntilRouteName] is ignored
  void handleException(
    GenericException e,
    BuildContext context, {
    VoidCallback? onDismissTapped,
    Iterable<String> popUntilRouteName = const [],
  }) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _internal(
        context,
        e,
        onDismissTapped: onDismissTapped,
        popUntilRouteName: popUntilRouteName,
      ),
    );
  }
}

extension on List<GraphQLError> {
  String get firstErrorMessage {
    if (isEmpty) return "";
    final first = firstWhereOrNull((element) => (element.message).isNotEmpty);
    return first?.message ?? "";
  }
}
