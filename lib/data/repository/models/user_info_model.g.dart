// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoModel _$$_UserInfoModelFromJson(Map<String, dynamic> json) =>
    _$_UserInfoModel(
      id: json['id'] as int?,
      roleName: json['roleName'] as String?,
      fullName: json['fullName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as int?,
      birthDay: json['birthDay'] as String?,
      point: json['point'] as int?,
      agreePercentage: json['agreePercentage'] as int?,
      replyTime: json['replyTime'] as int?,
      avatarURL: json['avatarURL'] as String?,
      identityValidated: json['identityValidated'] as bool?,
      driverLicenseValidated: json['driverLicenseValidated'] as bool?,
      status: json['status'] as int?,
      createdAt: json['createdAt'] as String?,
      identityUrl: json['identityUrl'] as String?,
      drivingLicenseFrontUrl: json['drivingLicenseFrontUrl'] as String?,
      drivingLicenseBackUrl: json['drivingLicenseBackUrl'] as String?,
      paypayAccount: json['paypayAccount'] as String?,
      stripeAccount: json['stripeAccount'] as String?,
      payoutType: json['payoutType'] as int?,
      stripeAccountValidated: json['stripeAccountValidated'] as bool?,
    );

Map<String, dynamic> _$$_UserInfoModelToJson(_$_UserInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roleName': instance.roleName,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'gender': instance.gender,
      'birthDay': instance.birthDay,
      'point': instance.point,
      'agreePercentage': instance.agreePercentage,
      'replyTime': instance.replyTime,
      'avatarURL': instance.avatarURL,
      'identityValidated': instance.identityValidated,
      'driverLicenseValidated': instance.driverLicenseValidated,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'identityUrl': instance.identityUrl,
      'drivingLicenseFrontUrl': instance.drivingLicenseFrontUrl,
      'drivingLicenseBackUrl': instance.drivingLicenseBackUrl,
      'paypayAccount': instance.paypayAccount,
      'stripeAccount': instance.stripeAccount,
      'payoutType': instance.payoutType,
      'stripeAccountValidated': instance.stripeAccountValidated,
    };
