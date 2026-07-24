import 'package:appointemnt/core/Networking/api_error_handler.dart';
import 'package:appointemnt/core/Networking/api_result.dart';
import 'package:appointemnt/core/Networking/api_services.dart';
import 'package:appointemnt/features/home/data/models/JOP_REPONSE_MODEL.dart';
class HomeRepo {
  ApiServices _apiServices;
  HomeRepo(this._apiServices);
  Future<ApiResult<JopReponseModel>> getJob() async {
    try {
      final response = await _apiServices.getJob();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
