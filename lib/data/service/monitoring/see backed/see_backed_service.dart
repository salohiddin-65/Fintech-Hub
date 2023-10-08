import 'package:dio/dio.dart';
import 'package:fintechreal/core/config/dio_catch_error_config.dart';
import 'package:fintechreal/core/config/dio_config.dart';
import 'package:fintechreal/core/config/dio_get_config.dart';
import 'package:fintechreal/core/config/network_response_config.dart';
import 'package:fintechreal/core/constants/project_urls.dart';
import 'package:fintechreal/data/models/monitoring/see%20backed/see_backed_model.dart';

class SeeBackedService with DioConfig, DioCatchErrorConfig {
  Future getSeeBacked() async {
    try {
      NetworkResponse response =
          await DioGetConfig().getRequest(endPoints: ProjectUrls.see_backed);
      if (response is NetworkSuccessResponse) {
        return NetworkSuccessResponse(
            data: SeeBackedModel.fromJson(response.data));
      } else if (response is NetworkErrorResponse) {
        return NetworkErrorResponse(error: response.error);
      }
    } on DioException catch (e) {
      return NetworkErrorResponse(error: catchError(e));
    }
  }
}
