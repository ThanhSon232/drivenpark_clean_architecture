// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_basic_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OwnerBasicInfo {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get avatarURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OwnerBasicInfoCopyWith<OwnerBasicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerBasicInfoCopyWith<$Res> {
  factory $OwnerBasicInfoCopyWith(
          OwnerBasicInfo value, $Res Function(OwnerBasicInfo) then) =
      _$OwnerBasicInfoCopyWithImpl<$Res, OwnerBasicInfo>;
  @useResult
  $Res call(
      {int id,
      String fullName,
      String phoneNumber,
      String email,
      String avatarURL});
}

/// @nodoc
class _$OwnerBasicInfoCopyWithImpl<$Res, $Val extends OwnerBasicInfo>
    implements $OwnerBasicInfoCopyWith<$Res> {
  _$OwnerBasicInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? avatarURL = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatarURL: null == avatarURL
          ? _value.avatarURL
          : avatarURL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnerBasicInfoCopyWith<$Res>
    implements $OwnerBasicInfoCopyWith<$Res> {
  factory _$$_OwnerBasicInfoCopyWith(
          _$_OwnerBasicInfo value, $Res Function(_$_OwnerBasicInfo) then) =
      __$$_OwnerBasicInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String fullName,
      String phoneNumber,
      String email,
      String avatarURL});
}

/// @nodoc
class __$$_OwnerBasicInfoCopyWithImpl<$Res>
    extends _$OwnerBasicInfoCopyWithImpl<$Res, _$_OwnerBasicInfo>
    implements _$$_OwnerBasicInfoCopyWith<$Res> {
  __$$_OwnerBasicInfoCopyWithImpl(
      _$_OwnerBasicInfo _value, $Res Function(_$_OwnerBasicInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? avatarURL = null,
  }) {
    return _then(_$_OwnerBasicInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatarURL: null == avatarURL
          ? _value.avatarURL
          : avatarURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OwnerBasicInfo implements _OwnerBasicInfo {
  const _$_OwnerBasicInfo(
      {this.id = 0,
      this.fullName = "Anonymous",
      this.phoneNumber = "Anonymous",
      this.email = "Anonymous",
      this.avatarURL = "Anonymous"});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String avatarURL;

  @override
  String toString() {
    return 'OwnerBasicInfo(id: $id, fullName: $fullName, phoneNumber: $phoneNumber, email: $email, avatarURL: $avatarURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnerBasicInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatarURL, avatarURL) ||
                other.avatarURL == avatarURL));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fullName, phoneNumber, email, avatarURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerBasicInfoCopyWith<_$_OwnerBasicInfo> get copyWith =>
      __$$_OwnerBasicInfoCopyWithImpl<_$_OwnerBasicInfo>(this, _$identity);
}

abstract class _OwnerBasicInfo implements OwnerBasicInfo {
  const factory _OwnerBasicInfo(
      {final int id,
      final String fullName,
      final String phoneNumber,
      final String email,
      final String avatarURL}) = _$_OwnerBasicInfo;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  String get avatarURL;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerBasicInfoCopyWith<_$_OwnerBasicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
