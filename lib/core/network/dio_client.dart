import 'package:dio/dio.dart';

class DioClient {
  DioClient._();

  static final dio = Dio(
    BaseOptions(
      connectTimeout: Duration(seconds: 15),
      receiveTimeout: Duration(seconds: 15),
    ),
  );
}
