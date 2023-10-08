import 'package:dio/dio.dart';
import 'package:fintechreal/core/config/dio_catch_error_config.dart';
import 'package:fintechreal/core/config/dio_config.dart';
import 'package:fintechreal/core/config/network_response_config.dart';
import 'package:fintechreal/core/constants/project_urls.dart';
import 'package:fintechreal/data/models/monitoring/all%20card/all_card_model.dart';
import 'package:get_storage/get_storage.dart';

class AllCardService with DioConfig, DioCatchErrorConfig {
  // localDB
  GetStorage localDB = GetStorage();

  Future getAllCard() async {
    try {
      Response response = await createRequest().post(
        ProjectUrls.base_url,
        options: Options(headers: {
          "FintechCoin-Authorization":
              "FcBearer ${localDB.read("access_token")}",
        }),
      );
      print(response);
      if (response is NetworkSuccessResponse) {
        print(response.data);
        return NetworkSuccessResponse(
            data: AllCardModel.fromJson(response.data));
      } else if (response is NetworkErrorResponse) {
        return NetworkErrorResponse(error: "${response.statusMessage}");
      }
    } on DioException catch (e) {
      return NetworkErrorResponse(error: catchError(e));
    }
  }
}
