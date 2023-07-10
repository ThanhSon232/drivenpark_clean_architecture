import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'card_home.freezed.dart';

@freezed
class CardHome with _$CardHome {
  const factory CardHome(
      {@Default('') String imageURL,
      @Default('') String name,
      @Default(LatLng(0, 0)) LatLng coordinate}) = _CardHome;
}
