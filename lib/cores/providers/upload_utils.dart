// import 'dart:developer';
// import 'dart:io';
//
// import 'package:event_handler/cores/utils/rydmie_alerts.dart';
// import 'package:flutter/material.dart';
// import 'package:rydmie_mobile/cores/network/client/http_client.dart';
// import 'package:rydmie_mobile/cores/utils/rydmie_alerts.dart';
// import 'package:rydmie_mobile/injections/injector.dart';
// import 'package:rydmie_mobile/modules/authentication/data/auth_repository.dart';
// import 'package:rydmie_mobile/modules/authentication/data/models/responses/upload_url_response.dart';
//
// class UploadFileUtil {
//   UploadFileUtil._();
//
//   static Future<bool> uploadFile({
//     required File file,
//     required String uploadUrl,
//   }) async {
//     final client = AppHttpClient();
//
//     try {
//       final response = await client.uploadFile(
//         filePath: file.path,
//         uploadUrl: uploadUrl,
//       );
//
//       print('Upload successful: ${response.data}');
//       return true;
//     } catch (e) {
//       print('Error: $e');
//       return false;
//     }
//   }
//
//   static Future<bool> uploadSelfie(
//     BuildContext context, {
//     required File file,
//   }) async {
//     try {
//       //get GraphQL client
//       final authRepository = getIt.get<AuthRepository>();
//
//       //trigger add selfie
//       final UploadUrlResponse? selfieUrl =
//           await authRepository.getSelfieUploadUrl();
//
//       if (selfieUrl != null) {
//         final uploadResult = await uploadFile(
//           file: file,
//           uploadUrl: selfieUrl.url!,
//         );
//
//         log(
//           ":::This is the response from the selfie upload :::: $uploadResult",
//         );
//
//         return uploadResult;
//       }
//     } catch (e) {
//       RydmieAlert.showError(context, message: e.toString());
//       log('This is the error message: $e');
//       return false;
//     }
//
//     return false;
//   }
// }
