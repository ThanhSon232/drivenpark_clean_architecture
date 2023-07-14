// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarLocationModel _$CarLocationModelFromJson(Map<String, dynamic> json) {
  return _CarLocationModel.fromJson(json);
}

/// @nodoc
mixin _$CarLocationModel {
  String? get addressName => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarLocationModelCopyWith<CarLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarLocationModelCopyWith<$Res> {
  factory $CarLocationModelCopyWith(
          CarLocationModel value, $Res Function(CarLocationModel) then) =
      _$CarLocationModelCopyWithImpl<$Res, CarLocationModel>;
  @useResult
  $Res call(
      {String? addressName,
      double? longitude,
      double? latitude,
      String? city,
      String? note});
}

/// @nodoc
class _$CarLocationModelCopyWithImpl<$Res, $Val extends CarLocationModel>
    implements $CarLocationModelCopyWith<$Res> {
  _$CarLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressName = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? city = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      addressName: freezed == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarLocationModelCopyWith<$Res>
    implements $CarLocationModelCopyWith<$Res> {
  factory _$$_CarLocationModelCopyWith(
          _$_CarLocationModel value, $Res Function(_$_CarLocationModel) then) =
      __$$_CarLocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? addressName,
      double? longitude,
      double? latitude,
      String? city,
      String? note});
}

/// @nodoc
class __$$_CarLocationModelCopyWithImpl<$Res>
    extends _$CarLocationModelCopyWithImpl<$Res, _$_CarLocationModel>
    implements _$$_CarLocationModelCopyWith<$Res> {
  __$$_CarLocationModelCopyWithImpl(
      _$_CarLocationModel _value, $Res Function(_$_CarLocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressName = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? city = freezed,
    Object? note = freezed,
  }) {
    return _then(_$_CarLocationModel(
      addressName: freezed == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarLocationModel implements _CarLocationModel {
  const _$_CarLocationModel(
      {this.addressName, this.longitude, this.latitude, this.city, this.note});

  factory _$_CarLocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_CarLocationModelFromJson(json);

  @override
  final String? addressName;
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  final String? city;
  @override
  final String? note;

  @override
  String toString() {
    return 'CarLocationModel(addressName: $addressName, longitude: $longitude, latitude: $latitude, city: $city, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarLocationModel &&
            (identical(other.addressName, addressName) ||
                other.addressName == addressName) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, addressName, longitude, latitude, city, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarLocationModelCopyWith<_$_CarLocationModel> get copyWith =>
      __$$_CarLocationModelCopyWithImpl<_$_CarLocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarLocationModelToJson(
      this,
    );
  }
}

abstract class _CarLocationModel implements CarLocationModel {
  const factory _CarLocationModel(
      {final String? addressName,
      final double? longitude,
      final double? latitude,
      final String? city,
      final String? note}) = _$_CarLocationModel;

  factory _CarLocationModel.fromJson(Map<String, dynamic> json) =
      _$_CarLocationModel.fromJson;

  @override
  String? get addressName;
  @override
  double? get longitude;
  @override
  double? get latitude;
  @override
  String? get city;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$_CarLocationModelCopyWith<_$_CarLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
