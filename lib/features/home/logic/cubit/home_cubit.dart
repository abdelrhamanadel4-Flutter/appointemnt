import 'package:appointemnt/core/Networking/api_error_handler.dart';
import 'package:appointemnt/core/Networking/api_result.dart';
import 'package:appointemnt/features/home/data/models/JOP_REPONSE_MODEL.dart';
import 'package:appointemnt/features/home/data/repo/home_reo.dart';
import 'package:appointemnt/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  List<Jobs> jobs = [];
  Future<void> getJob() async {
    emit(HomeState.loading());
    final result = await _homeRepo.getJob();
    result.whenOrNull(
      success: (data) {
jobs = (data.jobs ?? []).whereType<Jobs>().toList();
        emit(HomeState.success(data));
      },
      failure: (error) {
        emit(
          HomeState.error(
            error: ErrorHandler.handle(error).apiErrorModel.message,
          ),
        );
      },
    );
  }
}
