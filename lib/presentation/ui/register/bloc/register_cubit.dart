import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architecture_app/presentation/navigation/page_const.dart';
import 'package:clean_architecture_app/shared/dialog/snackbar.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  FutureOr<void> register(BuildContext context, {required String fullName,
    required String password,
    required String confirmPassword,
    required String email,
    required bool policy
  }){
    if(!policy){
      showSnackbar(context, "You have to accept our policies");
    }else {
      Navigator.pushNamed(context, PageConst.verificationPage, arguments: {
        'fullName': fullName,
        'password': password,
        'email': email
      });
    }
  }
}
