import 'package:freezed_annotation/freezed_annotation.dart';
part 'owner_model.freezed.dart';
part 'owner_model.g.dart';
@freezed
class OwnerModel with _$OwnerModel{
  const factory OwnerModel({
   int? id,
    String? fullName,
    String? phoneNumber,
    String? email,
    String? avatarURL
  }) = _OwnerModel;

  factory OwnerModel.fromJson(Map<String, dynamic> json) => _$OwnerModelFromJson(json);
}