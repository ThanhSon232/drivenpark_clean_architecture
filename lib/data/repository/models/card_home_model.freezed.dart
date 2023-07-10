// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardHomeModel _$CardHomeModelFromJson(Map<String, dynamic> json) {
  return _CardHomeModel.fromJson(json);
}

/// @nodoc
mixin _$CardHomeModel {
  String? get imageURL => throw _privateConstructorUsedError;
  String? get addressName => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardHomeModelCopyWith<CardHomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardHomeModelCopyWith<$Res> {
  factory $CardHomeModelCopyWith(
          CardHomeModel value, $Res Function(CardHomeModel) then) =
      _$CardHomeModelCopyWithImpl<$Res, CardHomeModel>;
  @useResult
  $Res call({String? imageURL, String? addressName, double? lat, double? lon});
}

/// @nodoc
class _$CardHomeModelCopyWithImpl<$Res, $Val extends CardHomeModel>
    implements $CardHomeModelCopyWith<$Res> {
  _$CardHomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageURL = freezed,
    Object? addressName = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      addressName: freezed == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardHomeModelCopyWith<$Res>
    implements $CardHomeModelCopyWith<$Res> {
  factory _$$_CardHomeModelCopyWith(
          _$_CardHomeModel value, $Res Function(_$_CardHomeModel) then) =
      __$$_CardHomeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageURL, String? addressName, double? lat, double? lon});
}

/// @nodoc
class __$$_CardHomeModelCopyWithImpl<$Res>
    extends _$CardHomeModelCopyWithImpl<$Res, _$_CardHomeModel>
    implements _$$_CardHomeModelCopyWith<$Res> {
  __$$_CardHomeModelCopyWithImpl(
      _$_CardHomeModel _value, $Res Function(_$_CardHomeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageURL = freezed,
    Object? addressName = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$_CardHomeModel(
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      addressName: freezed == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardHomeModel implements _CardHomeModel {
  const _$_CardHomeModel({this.imageURL, this.addressName, this.lat, this.lon});

  factory _$_CardHomeModel.fromJson(Map<String, dynamic> json) =>
      _$$_CardHomeModelFromJson(json);

  @override
  final String? imageURL;
  @override
  final String? addressName;
  @override
  final double? lat;
  @override
  final double? lon;

  @override
  String toString() {
    return 'CardHomeModel(imageURL: $imageURL, addressName: $addressName, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardHomeModel &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.addressName, addressName) ||
                other.addressName == addressName) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageURL, addressName, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardHomeModelCopyWith<_$_CardHomeModel> get copyWith =>
      __$$_CardHomeModelCopyWithImpl<_$_CardHomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardHomeModelToJson(
      this,
    );
  }
}

abstract class _CardHomeModel implements CardHomeModel {
  const factory _CardHomeModel(
      {final String? imageURL,
      final String? addressName,
      final double? lat,
      final double? lon}) = _$_CardHomeModel;

  factory _CardHomeModel.fromJson(Map<String, dynamic> json) =
      _$_CardHomeModel.fromJson;

  @override
  String? get imageURL;
  @override
  String? get addressName;
  @override
  double? get lat;
  @override
  double? get lon;
  @override
  @JsonKey(ignore: true)
  _$$_CardHomeModelCopyWith<_$_CardHomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
