import 'package:clean_architecture_app/domain/entities/location.dart';
import 'package:clean_architecture_app/shared/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class LocationRepository{
  Future<Either<Failure,  List<SearchLocation>>> search(String address);
}