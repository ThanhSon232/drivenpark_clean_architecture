import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_with_driver_state.dart';

class SearchWithDriverCubit extends Cubit<SearchWithDriverState> {
  SearchWithDriverCubit() : super(SearchWithDriverInitial());
}
