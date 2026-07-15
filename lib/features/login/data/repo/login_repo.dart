import 'package:appointemnt/core/Networking/api_error_handler.dart';
import 'package:appointemnt/core/Networking/api_result.dart';
import 'package:appointemnt/core/Networking/api_services.dart';
import 'package:appointemnt/features/login/data/models/login_requset_body.dart';
import 'package:appointemnt/features/login/data/models/login_response.dart';

class LoginRepo {
 ApiServices _apiServices;

  LoginRepo(this._apiServices);
  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginBody) async {
    try{
      final response=await _apiServices.login(loginBody);
      return ApiResult.success(response);
    }
    catch(e){
      return ApiResult.failure(ErrorHandler.handle(e));
    }
    
  }


}