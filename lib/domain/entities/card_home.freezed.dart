// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardHome {
  String get imageURL => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  LatLng get coordinate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardHomeCopyWith<CardHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardHomeCopyWith<$Res> {
  factory $CardHomeCopyWith(CardHome value, $Res Function(CardHome) then) =
      _$CardHomeCopyWithImpl<$Res, CardHome>;
  @useResult
  $Res call({String imageURL, String name, LatLng coordinate});
}

/// @nodoc
class _$CardHomeCopyWithImpl<$Res, $Val extends CardHome>
    implements $CardHomeCopyWith<$Res> {
  _$CardHomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageURL = null,
    Object? name = null,
    Object? coordinate = null,
  }) {
    return _then(_value.copyWith(
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardHomeCopyWith<$Res> implements $CardHomeCopyWith<$Res> {
  factory _$$_CardHomeCopyWith(
          _$_CardHome value, $Res Function(_$_CardHome) then) =
      __$$_CardHomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageURL, String name, LatLng coordinate});
}

/// @nodoc
class __$$_CardHomeCopyWithImpl<$Res>
    extends _$CardHomeCopyWithImpl<$Res, _$_CardHome>
    implements _$$_CardHomeCopyWith<$Res> {
  __$$_CardHomeCopyWithImpl(
      _$_CardHome _value, $Res Function(_$_CardHome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageURL = null,
    Object? name = null,
    Object? coordinate = null,
  }) {
    return _then(_$_CardHome(
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_CardHome implements _CardHome {
  const _$_CardHome(
      {this.imageURL = '',
      this.name = '',
      this.coordinate = const LatLng(0, 0)});

  @override
  @JsonKey()
  final String imageURL;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final LatLng coordinate;

  @override
  String toString() {
    return 'CardHome(imageURL: $imageURL, name: $name, coordinate: $coordinate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardHome &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageURL, name, coordinate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardHomeCopyWith<_$_CardHome> get copyWith =>
      __$$_CardHomeCopyWithImpl<_$_CardHome>(this, _$identity);
}

abstract class _CardHome implements CardHome {
  const factory _CardHome(
      {final String imageURL,
      final String name,
      final LatLng coordinate}) = _$_CardHome;

  @override
  String get imageURL;
  @override
  String get name;
  @override
  LatLng get coordinate;
  @override
  @JsonKey(ignore: true)
  _$$_CardHomeCopyWith<_$_CardHome> get copyWith =>
      throw _privateConstructorUsedError;
}
