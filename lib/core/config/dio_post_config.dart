import 'package:dio/dio.dart' show Response, DioException;
import 'package:fintechreal/core/config/dio_catch_error_config.dart'
    show DioCatchErrorConfig;
import 'package:fintechreal/core/config/dio_config.dart' show DioConfig;
import 'package:fintechreal/core/config/network_response_config.dart'
    show
        NetworkErrorResponse,
        NetworkExceptionResponse,
        NetworkResponse,
        NetworkSuccessResponse;
import 'package:fintechreal/core/constants/project_urls.dart' show ProjectUrls;

class DioPostConfig with DioConfig, DioCatchErrorConfig {
  Future<NetworkResponse> postRequest(Map<String, dynamic> params) async {
    try {
      Response response =
          await createRequest().post(ProjectUrls.base_url, data: params);
      if (response.statusCode == 200) {
        if (response.data["status"] == true) {
          return NetworkSuccessResponse(data: response.data);
        } else {
          if (response.data["data"] != null) {
            return NetworkErrorResponse(
              error: response.data["data"].toString(),
            );
          } else {
            return NetworkErrorResponse(
              error: response.data["message"].toString(),
            );
          }
        }
      } else {
        return NetworkExceptionResponse(
          exception: response.statusMessage.toString(),
        );
      }
    } on DioException catch (e) {
      return NetworkExceptionResponse(exception: catchError(e));
    }
  }
}
