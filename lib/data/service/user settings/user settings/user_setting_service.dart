import 'package:dio/dio.dart' show DioException;
import 'package:fintechreal/core/config/dio_catch_error_config.dart'
    show DioCatchErrorConfig;
import 'package:fintechreal/core/config/dio_config.dart' show DioConfig;
import 'package:fintechreal/core/config/dio_get_config.dart' show DioGetConfig;
import 'package:fintechreal/core/config/network_response_config.dart'
    show NetworkErrorResponse, NetworkResponse, NetworkSuccessResponse;
import 'package:fintechreal/core/constants/project_urls.dart' show ProjectUrls;
import 'package:fintechreal/data/models/user%20settings/user%20info/user_info_model.dart';

class UserSettingService with DioConfig, DioCatchErrorConfig {
  Future getUserInfo() async {
    try {
      NetworkResponse response =
          await DioGetConfig().getRequest(endPoints: ProjectUrls.user_info);
      if (response is NetworkSuccessResponse) {
        return NetworkSuccessResponse(
            data: UserInfoModel.fromJson(response.data));
      } else if (response is NetworkErrorResponse) {
        return NetworkErrorResponse(error: response.error);
      }
    } on DioException catch (e) {
      return NetworkErrorResponse(error: catchError(e));
    }
  }
}
