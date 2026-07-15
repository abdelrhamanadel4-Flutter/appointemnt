import 'package:appointemnt/core/Networking/api_services.dart';
import 'package:appointemnt/core/Networking/dio_factory.dart';
import 'package:appointemnt/features/login/data/repo/login_repo.dart';
import 'package:appointemnt/features/login/logic/cubit/login_cubit.dart';
import 'package:appointemnt/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:appointemnt/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  //signup
   getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));


}