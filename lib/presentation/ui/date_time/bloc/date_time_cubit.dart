import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'date_time_state.dart';

class DateTimeCubit extends Cubit<DateTimeState> {
  DateTimeCubit() : super(DateTimeInitial());

  void confirm(BuildContext context, DateTime startDate, DateTime endDate) {
    emit(DateTimeInitial());
    // Duration difference = startDate.difference(endDate);
    if (startDate.millisecondsSinceEpoch <= DateTime.now().millisecondsSinceEpoch) {
      emit(DateTimeError("Your time is invalid"));
    } else {
      if (endDate.isAfter(startDate)) {
        Navigator.pop(context, {"startDate": startDate, "endDate": endDate});
      } else {
        emit(DateTimeError(
            "Start date & time can't be greater than end date & time"));
      }
    }
  }

  void confirmTime(TimeOfDay t, TimeOfDay t1) {
    emit(DateTimeInitial());
    emit(DateTimeSelectTime(t, t1));
  }
}
