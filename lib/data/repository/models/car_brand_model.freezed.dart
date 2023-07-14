// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_brand_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarBrandModel _$CarBrandModelFromJson(Map<String, dynamic> json) {
  return _CarBrandModel.fromJson(json);
}

/// @nodoc
mixin _$CarBrandModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarBrandModelCopyWith<CarBrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarBrandModelCopyWith<$Res> {
  factory $CarBrandModelCopyWith(
          CarBrandModel value, $Res Function(CarBrandModel) then) =
      _$CarBrandModelCopyWithImpl<$Res, CarBrandModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$CarBrandModelCopyWithImpl<$Res, $Val extends CarBrandModel>
    implements $CarBrandModelCopyWith<$Res> {
  _$CarBrandModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarBrandModelCopyWith<$Res>
    implements $CarBrandModelCopyWith<$Res> {
  factory _$$_CarBrandModelCopyWith(
          _$_CarBrandModel value, $Res Function(_$_CarBrandModel) then) =
      __$$_CarBrandModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_CarBrandModelCopyWithImpl<$Res>
    extends _$CarBrandModelCopyWithImpl<$Res, _$_CarBrandModel>
    implements _$$_CarBrandModelCopyWith<$Res> {
  __$$_CarBrandModelCopyWithImpl(
      _$_CarBrandModel _value, $Res Function(_$_CarBrandModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CarBrandModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarBrandModel implements _CarBrandModel {
  const _$_CarBrandModel({this.id, this.name});

  factory _$_CarBrandModel.fromJson(Map<String, dynamic> json) =>
      _$$_CarBrandModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'CarBrandModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarBrandModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarBrandModelCopyWith<_$_CarBrandModel> get copyWith =>
      __$$_CarBrandModelCopyWithImpl<_$_CarBrandModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarBrandModelToJson(
      this,
    );
  }
}

abstract class _CarBrandModel implements CarBrandModel {
  const factory _CarBrandModel({final int? id, final String? name}) =
      _$_CarBrandModel;

  factory _CarBrandModel.fromJson(Map<String, dynamic> json) =
      _$_CarBrandModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CarBrandModelCopyWith<_$_CarBrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}
