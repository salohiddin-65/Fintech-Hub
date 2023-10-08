import 'package:dio/dio.dart' show DioException;
import 'package:fintechreal/core/config/dio_catch_error_config.dart'
    show DioCatchErrorConfig;
import 'package:fintechreal/core/config/dio_config.dart' show DioConfig;
import 'package:fintechreal/core/config/dio_get_config.dart' show DioGetConfig;
import 'package:fintechreal/core/config/network_response_config.dart'
    show NetworkErrorResponse, NetworkResponse, NetworkSuccessResponse;
import 'package:fintechreal/core/constants/project_urls.dart' show ProjectUrls;
import 'package:fintechreal/data/models/user%20settings/method%20name/method_name_model.dart'
    show MethodNameModel;

class MethodNameService with DioConfig, DioCatchErrorConfig {
  Future getMethodName() async {
    try {
      NetworkResponse response =
          await DioGetConfig().getRequest(endPoints: ProjectUrls.method_names);
      if (response is NetworkSuccessResponse) {
        return NetworkSuccessResponse(
            data: MethodNameModel.fromJson(response.data));
      } else if (response is NetworkErrorResponse) {
        return NetworkErrorResponse(error: response.error);
      }
    } on DioException catch (e) {
      return NetworkErrorResponse(error: catchError(e));
    }
  }
}
