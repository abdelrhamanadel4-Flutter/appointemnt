import 'package:appointemnt/core/Networking/api_error_handler.dart';
import 'package:appointemnt/core/Networking/api_result.dart';
import 'package:appointemnt/core/Networking/api_services.dart';
import 'package:appointemnt/features/sign_up/data/models/sign_up_requset_body.dart';
import 'package:appointemnt/features/sign_up/data/models/sign_up_response.dart';
import 'package:dio/dio.dart';

class SignUpRepo {
  ApiServices _apiServices;
  SignUpRepo(this._apiServices);
  Future<ApiResult<SignUpResponse>> SignUp(
    SignUpRequestBody signuprequsetbody,
  ) async {
    try {
      final response = await _apiServices.signUp(signuprequsetbody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
