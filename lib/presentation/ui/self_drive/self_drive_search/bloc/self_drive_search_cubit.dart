import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../../domain/entities/location.dart';
import '../../../../../domain/usecases/get_search_location_self_use_case.dart';
import '../../../../../main.dart';
import '../../../../navigation/page_const.dart';

part 'self_drive_search_state.dart';

class SelfDriveSearchCubit extends Cubit<SelfDriveSearchState> {
  GetSearchLocationSelfUseCase getSearchLocationSelfUseCase;
  SelfDriveSearchCubit(this.getSearchLocationSelfUseCase)
      : super(SelfDriveSearchInitial(
            startDateTime: DateTime.now(),
            endDateTime: DateTime.now().add(const Duration(hours: 3))));

  late DateTime startDate;
  late DateTime endDate;
  late SearchLocation searchLocation;

  void init() {
    startDate = DateTime.now().add(const Duration(days: 1));
    endDate = DateTime.now().add(const Duration(days: 1, hours: 3));
  }

  void selectLocation() async{
    var result =  await Navigator.pushNamed(
        globalNavigatorKey.currentContext!, PageConst.searchLocation);
    if(result!=null && result is List<dynamic>){
      searchLocation = result.first as SearchLocation;
      emit(SelfDriveSearchInitial(
          searchLocation: searchLocation,
          startDateTime: startDate, endDateTime: endDate));
    }
  }

  FutureOr<void> selectDateTime() async {
    var result = await Navigator.pushNamed(
        globalNavigatorKey.currentContext!, PageConst.dateTimePage,
        arguments: {'startDate': startDate, 'endDate': endDate});
    if (result != null && result is Map<String, dynamic>) {
      startDate = result["startDate"] as DateTime;
      endDate = result["endDate"] as DateTime;
      emit(SelfDriveSearchInitial(
          startDateTime: startDate, endDateTime: endDate));
    }
  }

  void confirm(BuildContext context){
    Navigator.pushNamed(context, PageConst.selfSearchResult, arguments: {
      "startDate": startDate,
      "endDate": endDate,
      "searchLocation": searchLocation
    });
  }
}
