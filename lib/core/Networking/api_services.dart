import 'package:appointemnt/core/Networking/api_constants.dart';
import 'package:appointemnt/features/home/data/models/JOP_REPONSE_MODEL.dart';
import 'package:appointemnt/features/login/data/models/login_requset_body.dart';
import 'package:appointemnt/features/login/data/models/login_response.dart';
import 'package:appointemnt/features/sign_up/data/models/sign_up_requset_body.dart';
import 'package:appointemnt/features/sign_up/data/models/sign_up_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_services.g.dart';
//https://jobicy.com/api/v2/remote-jobs?count=1
@RestApi(baseUrl: ApiConstants.baseUrl)

abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody body,
  );
  @POST(ApiConstants.signUp)
  Future<SignUpResponse> signUp(
    @Body() SignUpRequestBody body,
  );
  @GET(ApiConstants.job)
  Future<JopReponseModel> getJob();

}
