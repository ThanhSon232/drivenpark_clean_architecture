import 'package:freezed_annotation/freezed_annotation.dart';
part 'card_home_model.freezed.dart';
part 'card_home_model.g.dart';
@freezed
class CardHomeModel with _$CardHomeModel{
  const factory CardHomeModel({
    String? imageURL,
    String? addressName,
    double? lat,
    double? lon
  }) = _CardHomeModel;

  factory CardHomeModel.fromJson(Map<String, dynamic> json) => _$CardHomeModelFromJson(json);
}