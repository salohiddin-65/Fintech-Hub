import 'package:dio/dio.dart' show DioException, DioExceptionType;

mixin DioCatchErrorConfig {
  String catchError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timed out";
      case DioExceptionType.sendTimeout:
        return "Send timed out";
      case DioExceptionType.receiveTimeout:
        return "Receive time out";
      case DioExceptionType.unknown:
        return "Unknown error";
      default:
        return "Something went wrong";
    }
  }
}
