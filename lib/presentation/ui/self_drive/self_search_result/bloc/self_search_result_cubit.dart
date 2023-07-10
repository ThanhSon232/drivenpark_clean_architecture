import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'self_search_result_state.dart';

class SelfSearchResultCubit extends Cubit<SelfSearchResultState> {
  SelfSearchResultCubit() : super(SelfSearchResultInitial());


}
