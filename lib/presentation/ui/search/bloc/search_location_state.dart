part of 'search_location_cubit.dart';

@immutable
abstract class SearchLocationState extends Equatable{
  @override
  List<Object> get props => [];
}

class SearchLocationInitial extends SearchLocationState {}

class SearchLocationLoading extends SearchLocationState{}

class SearchLocationError extends SearchLocationState{
  final String error;

  SearchLocationError(this.error);

  @override
  List<Object> get props => [error];
}


class SearchLocationLoaded extends SearchLocationState{
  final List<SearchLocation> data;

  SearchLocationLoaded(this.data);

  @override
  List<Object> get props => [data];
}
