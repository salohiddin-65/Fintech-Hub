import 'package:dio/dio.dart' show Dio, BaseOptions;

mixin DioConfig {
  Dio createRequest() {
    var dio = Dio(BaseOptions(
      baseUrl: "https://fincoin.fintechhub.uz",
      validateStatus: (int? statusCode) {
        if (statusCode != null) {
          if (statusCode >= 100 && statusCode <= 511) {
            return true;
          } else {
            return false;
          }
        } else {
          return false;
        }
      },
      receiveDataWhenStatusError: true,
    ));

    // TIME OUT CONFIGURATION

    dio.options.connectTimeout = const Duration(seconds: 5);
    dio.options.receiveTimeout = const Duration(seconds: 5);
    dio.options.sendTimeout = const Duration(seconds: 5);
    return dio;
  }
}
