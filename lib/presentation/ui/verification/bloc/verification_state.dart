part of 'verification_cubit.dart';

@immutable
abstract class VerificationState extends Equatable {
  @override
  List<Object> get props => [];
}

class VerificationInitial extends VerificationState {}

class VerificationError extends VerificationState {
  final String error;

  VerificationError({required this.error});
  @override
  List<Object> get props => [error];
}

class VerificationLoading extends VerificationState {
  final bool isLoading;

  VerificationLoading({required this.isLoading});

  @override
  List<Object> get props => [isLoading];
}

class VerificationLoaded extends VerificationState {
  final String msg;
  VerificationLoaded({required this.msg});

  @override
  List<Object> get props => [msg];
}

class VerificationResend extends VerificationState{
  final int seconds;
  final bool isLoading;

  VerificationResend({required this.seconds, required this.isLoading});
  @override
  List<Object> get props => [seconds, isLoading];
}

class VerificationSuccess extends VerificationState {
  final String msg;
  @override
  List<Object> get props => [msg];
  VerificationSuccess({required this.msg});
}
