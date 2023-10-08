import 'package:dio/dio.dart' show DioException;
import 'package:fintechreal/core/config/dio_config.dart' show DioConfig;
import 'package:fintechreal/core/config/dio_get_config.dart' show DioGetConfig;
import 'package:fintechreal/core/config/dio_catch_error_config.dart'
    show DioCatchErrorConfig;
import 'package:fintechreal/core/config/network_response_config.dart'
    show NetworkErrorResponse, NetworkResponse, NetworkSuccessResponse;
import 'package:fintechreal/core/constants/project_urls.dart' show ProjectUrls;

class LogoutService with DioConfig, DioCatchErrorConfig {
  Future getLogout() async {
    try {
      NetworkResponse response =
          await DioGetConfig().getRequest(endPoints: ProjectUrls.logout);
      if (response is NetworkSuccessResponse) {
        return NetworkSuccessResponse(data: response.data);
      } else if (response is NetworkErrorResponse) {
        return NetworkErrorResponse(error: response.error);
      }
    } on DioException catch (e) {
      return NetworkErrorResponse(error: catchError(e));
    }
  }
}
