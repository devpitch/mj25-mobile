import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class ImageService {
  final ImagePicker _imagePicker;
  final Dio _dio;

  ImageService({required ImagePicker imagePicker, required Dio dio})
    : _imagePicker = imagePicker,
      _dio = dio;

  /// Pick an image from the gallery or camera.
  Future<XFile?> pickImage({required ImageSource source}) async {
    try {
      final XFile? pickedFile = await _imagePicker.pickImage(source: source);
      if (pickedFile != null) {
        return pickedFile;
      }
    } catch (e) {
      print("Error picking image: $e");
    }
    return null;
  }

  Future<List<File>> pickMultipleImages() async {
    try {
      final List<XFile> pickedFile = await _imagePicker.pickMultiImage();
      return pickedFile.map((e) => File(e.path)).toList();
    } catch (e) {}
    return [];
  }

  /// Compress an image to reduce its size.
  ///
  Future<XFile> compressImage({
    Uint8List? image,
    String? imagePath,
    filName,
    required bool isPath,
  }) async {
    try {
      final tempDir = await getTemporaryDirectory();
      final uniqueId = Uuid().v4();
      final outputPath = '${tempDir.path}/${filName ?? uniqueId}.webp';

      late String inputPath;

      if (isPath) {
        if (imagePath == null) {
          throw ArgumentError("Image path cannot be null when isPath is true.");
        }
        if (imagePath.endsWith(".webp")) {
          return XFile(imagePath, name: filName ?? uniqueId);
        }
        inputPath = imagePath;
      } else {
        if (image == null) {
          throw ArgumentError(
            "Image bytes cannot be null when isPath is false.",
          );
        }
        final tempFile = File('${tempDir.path}/temp_image_$uniqueId.jpg');
        await tempFile.writeAsBytes(image);
        inputPath = tempFile.path;
      }

      final compressedPhoto = await FlutterImageCompress.compressAndGetFile(
        inputPath,
        outputPath,
        quality: isPath ? 60 : 80,
        format: CompressFormat.webp,
      );

      if (compressedPhoto == null) {
        throw Exception("Image compression failed: compressedPhoto is null");
      }

      // Log size details
      final originalSizeKB =
          isPath
              ? (File(imagePath!).lengthSync() / 1024).toStringAsFixed(2)
              : (image!.lengthInBytes / 1024).toStringAsFixed(2);
      final compressedSizeKB = (File(compressedPhoto.path).lengthSync() / 1024)
          .toStringAsFixed(2);

      log(":::::Original Image Size: $originalSizeKB KB");
      log(":::::Compressed Image Size: $compressedSizeKB KB");
      log(":::::Compressed Image Size: ${compressedPhoto.path}");

      // File(inputPath).deleteSync(recursive: false);

      // Return results
      return
      // isPath
      // ?
      compressedPhoto
      // : await compressedPhoto.readAsBytes()
      ;
    } catch (e) {
      log("Error during image compression: $e");
      rethrow;
    }
  }

  /// Upload an image to the server.
  Future<Response?> uploadImage({
    required String url,
    required File image,
    Map<String, String>? headers,
  }) async {
    try {
      final FormData formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(image.path),
      });

      final response = await _dio.post(
        url,
        data: formData,
        options: Options(headers: headers),
      );

      return response;
    } catch (e) {
      print("Error uploading image: $e");
    }
    return null;
  }

  /// Cache an image for offline use.
  // Future<String?> downloadImage({
  //   required String imageUrl,
  //   required String fileName,
  // }) async {
  //   try {
  //     String? res = (await HelperFunctions.downloadFile(
  //       url: imageUrl,
  //       fileName: fileName,
  //     ));
  //     if (res != null) {
  //       return res;
  //     }
  //   } catch (e) {
  //     print("Error caching image: $e");
  //   }
  //   return null;
  // }

  Future<String> getImageString({required File imageFile}) async {
    List<int> imageBytes = imageFile.readAsBytesSync();
    String base64Image = base64Encode(imageBytes);
    return base64Image;
  }

  /// Retrieve an image from the cache.
  // Future<File?> getCachedImage(String imageUrl) async {
  //   try {
  //     final fileInfo = await _cacheManager.getFileFromCache(imageUrl);
  //     return fileInfo?.file;
  //   } catch (e) {
  //     print("Error retrieving cached image: $e");
  //   }
  //   return null;
  // }
  //
  // void cacheImage({required String imagePath, required String imageName}) {
  //   _cacheManager.putFile(imageName, File(imagePath).readAsBytesSync());
  // }
}

final imageServiceProvider = Provider<ImageService>((ref) {
  return ImageService(imagePicker: ImagePicker(), dio: Dio());
});
