import 'package:clean_architecture_app/data/repository/models/request/search_request_model.dart';
import 'package:clean_architecture_app/domain/entities/car_basic_info.dart';
import 'package:clean_architecture_app/domain/entities/car_detail_info.dart';
import 'package:clean_architecture_app/domain/usecases/self_search_use_case.dart';
import 'package:clean_architecture_app/shared/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class  BusinessRepository {
  Future<Either<Failure, List<CarBasicInfo>>> selfCarSearch(SearchRequestModel params);
  Future<Either<Failure, CarDetailInfo>> selfCarDetail(int id);
}