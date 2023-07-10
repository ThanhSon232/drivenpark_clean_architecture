// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterInput {
  String get fullName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get emailOrPhoneNumber => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  String? get firebaseKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterInputCopyWith<RegisterInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterInputCopyWith<$Res> {
  factory $RegisterInputCopyWith(
          RegisterInput value, $Res Function(RegisterInput) then) =
      _$RegisterInputCopyWithImpl<$Res, RegisterInput>;
  @useResult
  $Res call(
      {String fullName,
      String password,
      String emailOrPhoneNumber,
      String otp,
      String? firebaseKey});
}

/// @nodoc
class _$RegisterInputCopyWithImpl<$Res, $Val extends RegisterInput>
    implements $RegisterInputCopyWith<$Res> {
  _$RegisterInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? password = null,
    Object? emailOrPhoneNumber = null,
    Object? otp = null,
    Object? firebaseKey = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      emailOrPhoneNumber: null == emailOrPhoneNumber
          ? _value.emailOrPhoneNumber
          : emailOrPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseKey: freezed == firebaseKey
          ? _value.firebaseKey
          : firebaseKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterInputCopyWith<$Res>
    implements $RegisterInputCopyWith<$Res> {
  factory _$$_RegisterInputCopyWith(
          _$_RegisterInput value, $Res Function(_$_RegisterInput) then) =
      __$$_RegisterInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullName,
      String password,
      String emailOrPhoneNumber,
      String otp,
      String? firebaseKey});
}

/// @nodoc
class __$$_RegisterInputCopyWithImpl<$Res>
    extends _$RegisterInputCopyWithImpl<$Res, _$_RegisterInput>
    implements _$$_RegisterInputCopyWith<$Res> {
  __$$_RegisterInputCopyWithImpl(
      _$_RegisterInput _value, $Res Function(_$_RegisterInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? password = null,
    Object? emailOrPhoneNumber = null,
    Object? otp = null,
    Object? firebaseKey = freezed,
  }) {
    return _then(_$_RegisterInput(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      emailOrPhoneNumber: null == emailOrPhoneNumber
          ? _value.emailOrPhoneNumber
          : emailOrPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseKey: freezed == firebaseKey
          ? _value.firebaseKey
          : firebaseKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegisterInput implements _RegisterInput {
  const _$_RegisterInput(
      {required this.fullName,
      required this.password,
      required this.emailOrPhoneNumber,
      required this.otp,
      this.firebaseKey});

  @override
  final String fullName;
  @override
  final String password;
  @override
  final String emailOrPhoneNumber;
  @override
  final String otp;
  @override
  final String? firebaseKey;

  @override
  String toString() {
    return 'RegisterInput(fullName: $fullName, password: $password, emailOrPhoneNumber: $emailOrPhoneNumber, otp: $otp, firebaseKey: $firebaseKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterInput &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.emailOrPhoneNumber, emailOrPhoneNumber) ||
                other.emailOrPhoneNumber == emailOrPhoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.firebaseKey, firebaseKey) ||
                other.firebaseKey == firebaseKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, password, emailOrPhoneNumber, otp, firebaseKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterInputCopyWith<_$_RegisterInput> get copyWith =>
      __$$_RegisterInputCopyWithImpl<_$_RegisterInput>(this, _$identity);
}

abstract class _RegisterInput implements RegisterInput {
  const factory _RegisterInput(
      {required final String fullName,
      required final String password,
      required final String emailOrPhoneNumber,
      required final String otp,
      final String? firebaseKey}) = _$_RegisterInput;

  @override
  String get fullName;
  @override
  String get password;
  @override
  String get emailOrPhoneNumber;
  @override
  String get otp;
  @override
  String? get firebaseKey;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterInputCopyWith<_$_RegisterInput> get copyWith =>
      throw _privateConstructorUsedError;
}
