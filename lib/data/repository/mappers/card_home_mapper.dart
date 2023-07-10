import 'package:clean_architecture_app/data/repository/mappers/base/base_data_mapper.dart';
import 'package:clean_architecture_app/data/repository/models/card_home_model.dart';
import 'package:clean_architecture_app/domain/entities/card_home.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CardHomeMapper extends BaseDataMapper<CardHomeModel, CardHome>{
  @override
  CardHome mapToEntity(CardHomeModel? data) {
    return CardHome(
      coordinate: LatLng(data?.lat ?? 0, data?.lon ?? 0),
      name: data?.addressName ?? "",
      imageURL: data?.imageURL ?? ""
    );
  }

}