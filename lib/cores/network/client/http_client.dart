import 'dart:io';

import 'package:dio/dio.dart';
import 'package:loggy/loggy.dart';

class AppHttpClient {
  final Dio _dio;

  AppHttpClient()
    // : _dio = Dio(BaseOptions(baseUrl: baseUrl));
    : _dio = Dio();

  /// Upload a file
  /// [filePath] - Path to the file to upload
  /// [endpoint] - API endpoint to upload the file
  /// [fieldName] - Field name for the file in the form data
  /// [extraFields] - Additional fields to include in the form data (optional)
  Future<Response> uploadFile({
    required String filePath,
    required String uploadUrl,
    Map<String, dynamic>? extraFields,
  }) async {
    try {
      // Prepare file
      final file = File(filePath);

      final fileBytes = await file.readAsBytes();

      // Create form data
      // final formData = FormData.fromMap({
      //   fieldName: await MultipartFile.fromFile(filePath, filename: fileName),
      //   if (extraFields != null) ...extraFields,
      // });

      // Make POST request
      final response = await _dio.put(
        uploadUrl,
        data: fileBytes,
        options: Options(
          headers: {
            // 'Content-Type': 'multipart/form-data',
            'Content-Type': 'application/octet-stream',
            'Cache-Control': 'max-age=2592000',
          },
        ),
      );

      return response;
    } on DioException catch (e) {
      Loggy('Upload failed: ${e.response?.statusCode} - ${e.response?.data}');
      throw Exception('File upload failed: ${e.message}');
    }
  }
}
