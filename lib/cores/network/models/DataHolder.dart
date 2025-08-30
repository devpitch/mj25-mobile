import 'package:injectable/injectable.dart';

@LazySingleton()
class DataHolder {
  String? token;
  String? refreshToken;
  String? userId;
}
