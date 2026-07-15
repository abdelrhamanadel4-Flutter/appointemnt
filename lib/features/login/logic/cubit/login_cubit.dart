
import 'package:appointemnt/core/Networking/api_result.dart';
import 'package:appointemnt/features/login/data/models/login_requset_body.dart';
import 'package:appointemnt/features/login/data/repo/login_repo.dart';
import 'package:appointemnt/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginCubit extends Cubit<LoginState> {
  LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());
  final formKey = GlobalKey<FormState>();
  final TextEditingController  emailController = TextEditingController();
  final  TextEditingController passwordController = TextEditingController();
  Future<void> login(LoginRequestBody loginBody) async {
    emit(LoginState.loading());
    final result = await _loginRepo.login(loginBody);
    result.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

}
