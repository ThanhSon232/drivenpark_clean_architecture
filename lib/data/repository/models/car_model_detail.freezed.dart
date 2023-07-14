// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_model_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarModelDetail _$CarModelDetailFromJson(Map<String, dynamic> json) {
  return _CarModelDetail.fromJson(json);
}

/// @nodoc
mixin _$CarModelDetail {
  int? get id => throw _privateConstructorUsedError;
  CarBrandModel? get carBrand => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarModelDetailCopyWith<CarModelDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarModelDetailCopyWith<$Res> {
  factory $CarModelDetailCopyWith(
          CarModelDetail value, $Res Function(CarModelDetail) then) =
      _$CarModelDetailCopyWithImpl<$Res, CarModelDetail>;
  @useResult
  $Res call({int? id, CarBrandModel? carBrand, String? name});

  $CarBrandModelCopyWith<$Res>? get carBrand;
}

/// @nodoc
class _$CarModelDetailCopyWithImpl<$Res, $Val extends CarModelDetail>
    implements $CarModelDetailCopyWith<$Res> {
  _$CarModelDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? carBrand = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      carBrand: freezed == carBrand
          ? _value.carBrand
          : carBrand // ignore: cast_nullable_to_non_nullable
              as CarBrandModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarBrandModelCopyWith<$Res>? get carBrand {
    if (_value.carBrand == null) {
      return null;
    }

    return $CarBrandModelCopyWith<$Res>(_value.carBrand!, (value) {
      return _then(_value.copyWith(carBrand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarModelDetailCopyWith<$Res>
    implements $CarModelDetailCopyWith<$Res> {
  factory _$$_CarModelDetailCopyWith(
          _$_CarModelDetail value, $Res Function(_$_CarModelDetail) then) =
      __$$_CarModelDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, CarBrandModel? carBrand, String? name});

  @override
  $CarBrandModelCopyWith<$Res>? get carBrand;
}

/// @nodoc
class __$$_CarModelDetailCopyWithImpl<$Res>
    extends _$CarModelDetailCopyWithImpl<$Res, _$_CarModelDetail>
    implements _$$_CarModelDetailCopyWith<$Res> {
  __$$_CarModelDetailCopyWithImpl(
      _$_CarModelDetail _value, $Res Function(_$_CarModelDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? carBrand = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CarModelDetail(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      carBrand: freezed == carBrand
          ? _value.carBrand
          : carBrand // ignore: cast_nullable_to_non_nullable
              as CarBrandModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarModelDetail implements _CarModelDetail {
  const _$_CarModelDetail({this.id, this.carBrand, this.name});

  factory _$_CarModelDetail.fromJson(Map<String, dynamic> json) =>
      _$$_CarModelDetailFromJson(json);

  @override
  final int? id;
  @override
  final CarBrandModel? carBrand;
  @override
  final String? name;

  @override
  String toString() {
    return 'CarModelDetail(id: $id, carBrand: $carBrand, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarModelDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.carBrand, carBrand) ||
                other.carBrand == carBrand) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, carBrand, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarModelDetailCopyWith<_$_CarModelDetail> get copyWith =>
      __$$_CarModelDetailCopyWithImpl<_$_CarModelDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarModelDetailToJson(
      this,
    );
  }
}

abstract class _CarModelDetail implements CarModelDetail {
  const factory _CarModelDetail(
      {final int? id,
      final CarBrandModel? carBrand,
      final String? name}) = _$_CarModelDetail;

  factory _CarModelDetail.fromJson(Map<String, dynamic> json) =
      _$_CarModelDetail.fromJson;

  @override
  int? get id;
  @override
  CarBrandModel? get carBrand;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CarModelDetailCopyWith<_$_CarModelDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
