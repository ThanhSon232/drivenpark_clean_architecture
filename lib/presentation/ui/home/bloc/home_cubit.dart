import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architecture_app/domain/entities/card_home.dart';
import 'package:clean_architecture_app/domain/usecases/get_home_data_use_case.dart';
import 'package:clean_architecture_app/shared/error/failure.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._getHomeDataUseCase) : super(HomeLoading());
  final GetHomeDataUseCase _getHomeDataUseCase;

  FutureOr<void> getHomeData() async {
    final result = await _getHomeDataUseCase.call();
    result.fold((l) {
      if(l is ServerFailure) {
        emit(HomeError(error: l.errorMessage));
      }
    }, (r) => emit(HomeLoaded(data: r)));
  }


}
