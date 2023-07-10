import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architecture_app/shared/error/failure.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../domain/entities/location.dart';
import '../../../../domain/usecases/search_location_use_case.dart';

part 'search_location_state.dart';

class SearchLocationCubit extends Cubit<SearchLocationState> {
  SearchLocationUseCase searchLocationUseCase;
  SearchLocationCubit(this.searchLocationUseCase) : super(SearchLocationInitial());
  final suggest = ["Ho Chi Minh city", "Ha Noi city", "Tan Son Nhat international airport", "Noi Bai international airport"];

  FutureOr<void> search(String text) async{
    if(text.isEmpty){
      emit(SearchLocationInitial());
    }else {
      emit(SearchLocationLoading());
      final result = await searchLocationUseCase.call(text);
      result.fold((l) {
        if(l is ServerFailure){
          emit(SearchLocationError(l.errorMessage));
        }
      }, (r) => emit(SearchLocationLoaded(r)));
    }
    // Future.delayed(const Duration(seconds: 3), () => emit(SearchLocationLoaded()));
  }

  void dispose(){
    emit(SearchLocationInitial());
  }
}
