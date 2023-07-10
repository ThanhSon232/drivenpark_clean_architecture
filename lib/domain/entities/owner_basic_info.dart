import 'package:freezed_annotation/freezed_annotation.dart';
part 'owner_basic_info.freezed.dart';

@freezed
class OwnerBasicInfo with _$OwnerBasicInfo{
  const factory OwnerBasicInfo({
    @Default(0)
    int id,
    @Default("Anonymous")
    String fullName,
    @Default("Anonymous")
    String phoneNumber,
    @Default("Anonymous")
    String email,
    @Default("Anonymous")
    String avatarURL
}) = _OwnerBasicInfo;
}