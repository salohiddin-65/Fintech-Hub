import 'package:dio/dio.dart';
import 'package:fintechreal/core/config/dio_catch_error_config.dart';
import 'package:fintechreal/core/config/dio_config.dart';
import 'package:fintechreal/core/config/dio_get_config.dart';
import 'package:fintechreal/core/config/network_response_config.dart';
import 'package:fintechreal/core/constants/project_urls.dart';
import 'package:fintechreal/data/models/monitoring/mentors/mentors_model.dart';

class MentorsService with DioConfig, DioCatchErrorConfig {
  Future getMentors() async {
    try {
      NetworkResponse response =
          await DioGetConfig().getRequest(endPoints: ProjectUrls.mentors);
      if (response is NetworkSuccessResponse) {
        return NetworkSuccessResponse(
            data: MentorsModel.fromJson(response.data));
      } else if (response is NetworkErrorResponse) {
        return NetworkErrorResponse(error: response.error);
      }
    } on DioException catch (e) {
      return NetworkErrorResponse(error: catchError(e));
    }
  }
}
