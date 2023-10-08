import 'package:dio/dio.dart';
import 'package:fintechreal/core/config/dio_catch_error_config.dart';
import 'package:fintechreal/core/config/dio_config.dart';
import 'package:fintechreal/core/config/dio_get_config.dart';
import 'package:fintechreal/core/config/network_response_config.dart';
import 'package:fintechreal/core/constants/project_urls.dart';
import 'package:fintechreal/data/models/monitoring/algoritm/algoritm_model.dart';

class AlgoritmService with DioConfig, DioCatchErrorConfig {
  Future getAlgoritm() async {
    try {
      NetworkResponse response =
          await DioGetConfig().getRequest(endPoints: ProjectUrls.algorithm);
      if (response is NetworkSuccessResponse) {
        return NetworkSuccessResponse(
            data: AlgoritmModel.fromJson(response.data));
      } else if (response is NetworkErrorResponse) {
        return NetworkErrorResponse(error: response.error);
      }
    } on DioException catch (e) {
      return NetworkErrorResponse(error: catchError(e));
    }
  }
}
