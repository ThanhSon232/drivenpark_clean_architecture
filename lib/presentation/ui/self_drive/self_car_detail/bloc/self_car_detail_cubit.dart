import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architecture_app/domain/entities/car_detail_info.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../../domain/usecases/get_car_detail_use_case.dart';
import '../../../../../shared/error/failure.dart';

part 'self_car_detail_state.dart';

class SelfCarDetailCubit extends Cubit<SelfCarDetailState> {
  GetCarDetailUseCase getCarDetailUseCase;

  SelfCarDetailCubit(this.getCarDetailUseCase) : super(SelfCarDetailLoading(isLoading: false));

  FutureOr<void> load(int id) async {
    emit(SelfCarDetailLoading(isLoading: true));
    var response = await getCarDetailUseCase.call(id);
    emit(SelfCarDetailLoading(isLoading: false));

    response.fold((l) {
      if (l is ServerFailure) {
        emit(SelfCarDetailError(error: l.errorMessage));
      }
    }, (r) {
      emit(SelfCarDetailLoaded(data: r));
    });
  }
}
