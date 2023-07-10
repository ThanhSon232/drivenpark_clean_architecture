part of 'login_cubit.dart';

@immutable
abstract class LoginState extends Equatable{
  @override
  List<Object> get props => [];
}

class LoginInvalid extends LoginState{
  final String error;

  LoginInvalid({required this.error});

  @override
  List<Object> get props => [error];
}

class LoginValid extends LoginState{
  final String msg;

  LoginValid({required this.msg});

  @override
  List<Object> get props => [msg];
}

class LoginInitial extends LoginState {

}

class LoginLoading extends LoginState{
  final bool isLoading;

  LoginLoading({required this.isLoading});

  @override
  List<Object> get props => [isLoading];
}
class LoginLoaded extends LoginState{
  // final bool isLoading;
  //
  // LoginLoading({required this.isLoading});
  //
  // @override
  // List<Object> get props => [isLoading];
}


