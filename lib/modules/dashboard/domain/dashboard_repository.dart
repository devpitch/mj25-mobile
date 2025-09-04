import 'dart:convert';
import 'dart:developer';

import 'package:event_handler/cores/cache/secure_storage_interactor.dart';
import 'package:event_handler/cores/error_handling/handle_query_result.dart';
import 'package:event_handler/cores/network/client/api_client.dart';
import 'package:event_handler/cores/network/client/graphql/__generated/mutation.graphql.dart';
import 'package:event_handler/cores/network/client/graphql/__generated/query.graphql.dart';
import 'package:event_handler/cores/network/models/DataHolder.dart';
import 'package:event_handler/modules/dashboard/models/request/create_invitation_link_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/link_request_model.dart';
import 'package:event_handler/modules/dashboard/models/response/invitation_link_response.dart';
import 'package:injectable/injectable.dart';

abstract class DashboardRepository {
  Future<PaginatedInvitationLinkResponse?> getInvitationLinks({
    required LinkRequestModel request,
  });

  Future createInvitationLink(CreateInvitationLinkRequestModel request);
  // Future<UploadUrlResponse?> getSelfieUploadUrl();
}

@LazySingleton(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  DashboardRepositoryImpl(
    this._client,
    this._secureStorageInteractor,
    this._dataHolder,
  );

  final ApiClient _client;
  final SecureStorageInteractor _secureStorageInteractor;
  final DataHolder _dataHolder;

  @override
  Future<PaginatedInvitationLinkResponse?> getInvitationLinks({
    required LinkRequestModel request,
  }) async {
    final response = await handleQueryResult(
      queryBuilder: () => _client.client.query$invitationLinks(
        Options$Query$invitationLinks(variables: request.toVariables),
      ),
    );

    log(
      ":::This is from getting invitationLink response ::: ${jsonEncode(response.parsedData?.toJson()['invitationLinks'])}",
    );

    final data = response.parsedData?.toJson()['invitationLinks'] != null
        ? PaginatedInvitationLinkResponse.fromJson(
            response.parsedData?.toJson()['invitationLinks'],
          )
        : null;

    return data;
  }

  @override
  createInvitationLink(CreateInvitationLinkRequestModel request) async {
    final response = await handleQueryResult(
      queryBuilder: () => _client.client.mutate$generateInviteLink(
        Options$Mutation$generateInviteLink(variables: request.toVariables),
      ),
    );

    log(
      "::::Response from the invitation Link generation:::: ${response.parsedData?.toJson()}",
    );

    if (response.parsedData?.toJson() != null) {
      return response.parsedData?.toJson()['generateInviteLink'];
    }

    return null;
  }
}
