import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_model.freezed.dart';
part 'user_info_model.g.dart';
@freezed
class UserInfoModel with _$UserInfoModel{
  const factory UserInfoModel({
    int? id,
    String? roleName,
    String? fullName,
    String? phoneNumber,
    String? email,
    int? gender,
    String? birthDay,
    int? point,
    int? agreePercentage,
    int? replyTime,
    String? avatarURL,
    bool? identityValidated,
    bool? driverLicenseValidated,
    int? status,
    String? createdAt,
    String? identityUrl,
    String? drivingLicenseFrontUrl,
    String? drivingLicenseBackUrl,
    String? paypayAccount,
    String? stripeAccount,
    int? payoutType,
    bool? stripeAccountValidated
  }) = _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => _$UserInfoModelFromJson(json);
}