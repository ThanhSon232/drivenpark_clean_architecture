part of 'self_search_result_cubit.dart';

@immutable
abstract class SelfSearchResultState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SelfSearchResultInitial extends SelfSearchResultState {}

class SelfSearchResultLoading extends SelfSearchResultState {
  final bool isLoading;

  @override
  List<Object?> get props => [isLoading];

  SelfSearchResultLoading({required this.isLoading});
}

class SelfSearchResultLoaded extends SelfSearchResultState {
  final List<CarBasicInfo> data;

  @override
  List<Object?> get props => [data];

  SelfSearchResultLoaded({required this.data});
}

class SelfSearchResultError extends SelfSearchResultState {
  final String error;

  @override
  List<Object?> get props => [error];

  SelfSearchResultError({required this.error});
}
