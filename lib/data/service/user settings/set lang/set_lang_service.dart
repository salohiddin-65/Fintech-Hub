import 'package:dio/dio.dart' show DioException;
import 'package:fintechreal/core/config/dio_catch_error_config.dart'
    show DioCatchErrorConfig;
import 'package:fintechreal/core/config/dio_config.dart' show DioConfig;
import 'package:fintechreal/core/config/dio_post_config.dart'
    show DioPostConfig;
import 'package:fintechreal/core/config/network_response_config.dart'
    show NetworkErrorResponse, NetworkResponse, NetworkSuccessResponse;

class SetLangService with DioConfig, DioCatchErrorConfig {
  Future getSetLang() async {
    try {
      NetworkResponse response = await DioPostConfig().postRequest({
        "method": "set_lang",
        "params": {
          "lang": "uz",
        },
      });
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
