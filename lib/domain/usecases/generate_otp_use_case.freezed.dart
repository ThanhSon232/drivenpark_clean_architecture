// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_otp_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GenerateOTPInput {
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  bool get sendSMS => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenerateOTPInputCopyWith<GenerateOTPInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateOTPInputCopyWith<$Res> {
  factory $GenerateOTPInputCopyWith(
          GenerateOTPInput value, $Res Function(GenerateOTPInput) then) =
      _$GenerateOTPInputCopyWithImpl<$Res, GenerateOTPInput>;
  @useResult
  $Res call({String? email, String? phoneNumber, bool sendSMS});
}

/// @nodoc
class _$GenerateOTPInputCopyWithImpl<$Res, $Val extends GenerateOTPInput>
    implements $GenerateOTPInputCopyWith<$Res> {
  _$GenerateOTPInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? sendSMS = null,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sendSMS: null == sendSMS
          ? _value.sendSMS
          : sendSMS // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenerateOTPInputCopyWith<$Res>
    implements $GenerateOTPInputCopyWith<$Res> {
  factory _$$_GenerateOTPInputCopyWith(
          _$_GenerateOTPInput value, $Res Function(_$_GenerateOTPInput) then) =
      __$$_GenerateOTPInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? phoneNumber, bool sendSMS});
}

/// @nodoc
class __$$_GenerateOTPInputCopyWithImpl<$Res>
    extends _$GenerateOTPInputCopyWithImpl<$Res, _$_GenerateOTPInput>
    implements _$$_GenerateOTPInputCopyWith<$Res> {
  __$$_GenerateOTPInputCopyWithImpl(
      _$_GenerateOTPInput _value, $Res Function(_$_GenerateOTPInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? sendSMS = null,
  }) {
    return _then(_$_GenerateOTPInput(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sendSMS: null == sendSMS
          ? _value.sendSMS
          : sendSMS // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GenerateOTPInput implements _GenerateOTPInput {
  const _$_GenerateOTPInput(
      {this.email, this.phoneNumber, required this.sendSMS});

  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final bool sendSMS;

  @override
  String toString() {
    return 'GenerateOTPInput(email: $email, phoneNumber: $phoneNumber, sendSMS: $sendSMS)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerateOTPInput &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.sendSMS, sendSMS) || other.sendSMS == sendSMS));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, phoneNumber, sendSMS);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerateOTPInputCopyWith<_$_GenerateOTPInput> get copyWith =>
      __$$_GenerateOTPInputCopyWithImpl<_$_GenerateOTPInput>(this, _$identity);
}

abstract class _GenerateOTPInput implements GenerateOTPInput {
  const factory _GenerateOTPInput(
      {final String? email,
      final String? phoneNumber,
      required final bool sendSMS}) = _$_GenerateOTPInput;

  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  bool get sendSMS;
  @override
  @JsonKey(ignore: true)
  _$$_GenerateOTPInputCopyWith<_$_GenerateOTPInput> get copyWith =>
      throw _privateConstructorUsedError;
}
