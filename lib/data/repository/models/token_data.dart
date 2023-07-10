import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_data.freezed.dart';
part 'token_data.g.dart';
@freezed
class TokenData with _$TokenData{
  const factory TokenData({
    String? token,
    String? refreshToken
}) = _TokenData;

  factory TokenData.fromJson(Map<String, dynamic> json) => _$TokenDataFromJson(json);
}