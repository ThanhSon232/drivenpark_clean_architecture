part of 'self_drive_search_cubit.dart';

@immutable
abstract class SelfDriveSearchState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SelfDriveSearchInitial extends SelfDriveSearchState {
  final DateTime startDateTime;
  final DateTime endDateTime;
  final SearchLocation? searchLocation;

  SelfDriveSearchInitial(
      {required this.startDateTime,
      required this.endDateTime,
      this.searchLocation});

  @override
  List<Object?> get props => [startDateTime, endDateTime, searchLocation];
}

class SelfDriveSearchLoaded extends SelfDriveSearchState {
  final DateTime? startDateTime;
  final DateTime? endDateTime;
  final SearchLocation? searchLocation;

  SelfDriveSearchLoaded(
      {this.startDateTime, this.endDateTime, this.searchLocation});

  @override
  List<Object?> get props => [startDateTime, endDateTime, searchLocation];
}
