part of 'self_car_detail_cubit.dart';

@immutable
abstract class SelfCarDetailState extends Equatable {
  @override
  List<Object> get props => [];
}

class SelfCarDetailInitial extends SelfCarDetailState {}

class SelfCarDetailLoading extends SelfCarDetailState {
  final bool isLoading;

  SelfCarDetailLoading({required this.isLoading});

  @override
  List<Object> get props => [isLoading];
}

class SelfCarDetailLoaded extends SelfCarDetailState {
  final CarDetailInfo data;

  SelfCarDetailLoaded({required this.data});

  @override
  List<Object> get props => [data];
}

class SelfCarDetailError extends SelfCarDetailState {
  final String error;

  SelfCarDetailError({required this.error});

  @override
  List<Object> get props => [error];
}


