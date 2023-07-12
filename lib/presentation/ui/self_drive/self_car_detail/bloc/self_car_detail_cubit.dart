import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'self_car_detail_state.dart';

class SelfCarDetailCubit extends Cubit<SelfCarDetailState> {
  SelfCarDetailCubit() : super(SelfCarDetailInitial());
}
