import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architecture_app/data/repository/models/request/search_request_model.dart';
import 'package:clean_architecture_app/domain/entities/car_basic_info.dart';
import 'package:clean_architecture_app/domain/usecases/self_search_use_case.dart';
import 'package:clean_architecture_app/shared/error/failure.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'self_search_result_state.dart';

class SelfSearchResultCubit extends Cubit<SelfSearchResultState> {
  SelfSearchResultCubit(this.selfSearchUseCase)
      : super(SelfSearchResultInitial());
  SelfSearchUseCase selfSearchUseCase;

  FutureOr<void> loadData(SearchRequestModel params) async {
    emit(SelfSearchResultLoading(isLoading: true));
    final result = await selfSearchUseCase.call(params);
    emit(SelfSearchResultLoading(isLoading: false));

    result.fold((l) {
      if (l is ServerFailure) {
        emit(SelfSearchResultError(error: l.errorMessage));
      }
    }, (r) {
      emit(SelfSearchResultLoaded(data: r));
    });
  }
}
