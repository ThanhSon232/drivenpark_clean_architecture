part of 'home_cubit.dart';

@immutable
abstract class HomeState extends Equatable{
  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {

}

class HomeLoading extends HomeState{
  // final bool isLoading;
  //
  // HomeLoading({required this.isLoading});
  // @override
  // List<Object> get props => [isLoading];
}


class HomeError extends HomeState{
  final String error;
  HomeError({required this.error});
  @override
  List<Object> get props => [error];
}

class HomeLoaded extends HomeState{
  final List<CardHome> data;
  HomeLoaded({required this.data});
  @override
  List<Object> get props => [data];
}
