// ignore_for_file: body_might_complete_normally_nullable
import 'package:fintechreal/core/config/dio_catch_error_config.dart'
    show DioCatchErrorConfig;
import 'package:fintechreal/core/config/dio_config.dart' show DioConfig;
import 'package:fintechreal/core/config/dio_post_config.dart'
    show DioPostConfig;
import 'package:fintechreal/core/config/network_response_config.dart'
    show
        NetworkErrorResponse,
        NetworkExceptionResponse,
        NetworkResponse,
        NetworkSuccessResponse;
import 'package:get_storage/get_storage.dart' show GetStorage;

class AuthService with DioCatchErrorConfig, DioConfig {
  Future<NetworkResponse?> authOne(
      {required String password, required String phone}) async {
    NetworkResponse response = await DioPostConfig().postRequest({
      "method": 'login',
      "params": {
        "password": password,
        "phone": phone,
      },
    });
    if (response is NetworkSuccessResponse) {
      return NetworkSuccessResponse(data: response.data);
    } else if (response is NetworkExceptionResponse) {
      return NetworkExceptionResponse(exception: response.exception);
    } else if (response is NetworkErrorResponse) {
      return NetworkErrorResponse(error: response.error);
    }
  }

  Future<NetworkResponse?> authTwo(
      {required String otp, required String token}) async {
    NetworkResponse response = await DioPostConfig().postRequest({
      "method": 'auth.two',
      "params": {
        "otp": otp,
        "token": token,
      },
    });
    if (response is NetworkSuccessResponse) {
      GetStorage().write("access_token", response.data["data"]["token"]);
      return NetworkSuccessResponse(data: response.data);
    } else if (response is NetworkExceptionResponse) {
      return NetworkExceptionResponse(exception: response.exception);
    } else if (response is NetworkErrorResponse) {
      return NetworkErrorResponse(error: response.error);
    }
  }
}
