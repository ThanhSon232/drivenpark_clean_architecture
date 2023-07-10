import 'dart:convert';

import 'package:clean_architecture_app/data/repository/mappers/card_home_mapper.dart';
import 'package:clean_architecture_app/data/repository/models/card_home_model.dart';
import 'package:clean_architecture_app/domain/entities/card_home.dart';

import 'package:clean_architecture_app/shared/error/failure.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../domain/repositories/local_repository.dart';

class LocalRepositoryImp extends LocalRepository{
  @override
  Future<Either<Failure, List<CardHome>>> getListCardHome() async{
      final jsonString = await rootBundle.loadString('lib/presentation/assets/json/home_data.json');
      final data = json.decode(jsonString);
      try{
        final items = (data as List<dynamic>).map((item) {
          return CardHomeMapper().mapToEntity(CardHomeModel.fromJson(item));
        }).toList();
        return Right(items);
      } on Exception catch(e){
        return Left(ServerFailure(e.toString()));
      }

  }

}