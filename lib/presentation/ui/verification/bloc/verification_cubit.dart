import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architecture_app/domain/usecases/generate_otp_use_case.dart';
import 'package:clean_architecture_app/domain/usecases/register_use_case.dart';
import 'package:clean_architecture_app/presentation/helper/validation.dart';
import 'package:clean_architecture_app/shared/error/failure.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit(this.generateOTPUseCase, this.registerUseCase)
      : super(VerificationInitial());
  final GenerateOTPUseCase generateOTPUseCase;
  final RegisterUseCase registerUseCase;
  late final Timer timer;
  bool isClicked = true;
  final int time = 30;
  FutureOr<void> startCountdown(Map<String, dynamic> input) async{

    if(isClicked){
      await sendOTP(input);
      isClicked = false;
      emit(VerificationResend(seconds: 30, isLoading: false));
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (state.props.first as int > 0) {
          emit(VerificationResend(seconds: (state.props.first as int) - 1, isLoading: true));
        } else {
          isClicked = true;
          emit(VerificationResend(seconds: 30, isLoading: false));
          timer.cancel();
        }
      });
    }

    // }
  }

  FutureOr<void> sendOTP(Map<String, dynamic> input) async {
    emit(VerificationLoading(isLoading: true));
    bool isSendSmS = Validation.isRealEmail(input["email"]);
    final result = await generateOTPUseCase.call(GenerateOTPInput(
        sendSMS: !isSendSmS,
        phoneNumber: input["email"],
        email: input["email"]));
    emit(VerificationLoading(isLoading: false));
    result.fold((l) {
      if (l is ServerFailure) {
        emit(VerificationError(error: l.errorMessage));
      }
    },
        (r) => {
              if (r)
                {
                  emit(VerificationLoaded(
                      msg:
                          "We've sent a code to your mail/phone. Check it out"))
                }
            });
  }

  FutureOr<void> register(Map<String, dynamic> input, String otp) async {
    final result = await registerUseCase.call(RegisterInput(
        fullName: input["fullName"],
        password: input["password"],
        emailOrPhoneNumber: input["email"],
        otp: otp));
    result.fold(
        (l) => {
              if (l is ServerFailure)
                {emit(VerificationError(error: l.errorMessage))}
            }, (r) {
      emit(VerificationSuccess(msg: "Register success. You can login now"));
    });
  }


}
