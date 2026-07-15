import 'package:appointemnt/core/Networking/api_result.dart';
import 'package:appointemnt/features/sign_up/data/models/sign_up_requset_body.dart';
import 'package:appointemnt/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:appointemnt/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:bloc/bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  SignUpRepo _signUpRepo;
  SignupCubit(this._signUpRepo) : super(SignupState.initial());
  Future<void> SignUp(SignUpRequestBody signuprequsetbody) async {
    final result = await _signUpRepo.SignUp(signuprequsetbody);
    result.when(
      success: (data) {
        emit(SignupState.signupSuccess(data));
      },
      failure: (error) {
        emit(SignupState.signupError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
