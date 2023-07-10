import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architecture_app/shared/error/failure.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../domain/usecases/login_use_case.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUseCase) : super(LoginInitial());

  final LoginUseCase _loginUseCase;

  FutureOr<void> onLoginButtonPressed({required String username, required String password}) async{
    emit(LoginLoading(isLoading: true));
    final result = await _loginUseCase.call(LoginInput(username: username, password: password));
    emit(LoginLoading(isLoading: false));

    result.fold((failure){
     if(failure is ServerFailure){
       emit(LoginInvalid(error: failure.errorMessage));
     }
    }, (r) {
        emit(LoginValid(msg: "Login success"));
    });

  }
}
