part of 'self_search_result_cubit.dart';

@immutable
abstract class SelfSearchResultState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SelfSearchResultInitial extends SelfSearchResultState{}

class SelfSearchResultLoading extends SelfSearchResultState {
  final bool isLoading;

  @override
  List<Object?> get props => [isLoading];

  SelfSearchResultLoading({required this.isLoading});
}
