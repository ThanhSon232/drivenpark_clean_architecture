part of 'date_time_cubit.dart';

@immutable
abstract class DateTimeState extends Equatable {
  @override
  List<Object> get props => [];
}

class DateTimeInitial extends DateTimeState {}

class DateTimeLoading extends DateTimeState {}

class DateTimeSelectTime extends DateTimeState {
  final TimeOfDay start;
  final TimeOfDay end;

  DateTimeSelectTime(this.start, this.end);

  @override
  List<Object> get props => [start, end];
}

class DateTimeError extends DateTimeState {
  final String error;

  DateTimeError(this.error);

  @override
  List<Object> get props => [error];
}
