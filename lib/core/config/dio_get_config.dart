// ignore_for_file: empty_catches
import 'package:dio/dio.dart' show Response, Options, DioException;
import 'package:fintechreal/core/config/dio_catch_error_config.dart'
    show DioCatchErrorConfig;
import 'package:fintechreal/core/config/dio_config.dart' show DioConfig;
import 'package:fintechreal/core/config/network_response_config.dart';
import 'package:get_storage/get_storage.dart';

class DioGetConfig with DioConfig, DioCatchErrorConfig {
  // localDB
  GetStorage localDB = GetStorage();

  Future getRequest({required String endPoints}) async {
    try {
      Response response = await createRequest().get(
        endPoints,
        options: Options(
          headers: {
            "FintechCoin-Authorization":
                "FcBearer ${localDB.read("access_token")}"
          },
        ),
      );
      if (response.statusCode == 200) {
        if (response.data['status'] == true) {
          return NetworkSuccessResponse(data: response.data);
        } else {
          return NetworkErrorResponse(error: response.data['message']);
        }
      } else {
        return NetworkErrorResponse(error: "${response.statusMessage}");
      }
    } on DioException catch (e) {
      return e.message.toString();
    }
  }
}
