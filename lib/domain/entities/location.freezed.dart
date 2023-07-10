// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchLocation {
  String get address => throw _privateConstructorUsedError;
  LatLng get coordinate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchLocationCopyWith<SearchLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationCopyWith<$Res> {
  factory $SearchLocationCopyWith(
          SearchLocation value, $Res Function(SearchLocation) then) =
      _$SearchLocationCopyWithImpl<$Res, SearchLocation>;
  @useResult
  $Res call({String address, LatLng coordinate});
}

/// @nodoc
class _$SearchLocationCopyWithImpl<$Res, $Val extends SearchLocation>
    implements $SearchLocationCopyWith<$Res> {
  _$SearchLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? coordinate = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchLocationCopyWith<$Res>
    implements $SearchLocationCopyWith<$Res> {
  factory _$$_SearchLocationCopyWith(
          _$_SearchLocation value, $Res Function(_$_SearchLocation) then) =
      __$$_SearchLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, LatLng coordinate});
}

/// @nodoc
class __$$_SearchLocationCopyWithImpl<$Res>
    extends _$SearchLocationCopyWithImpl<$Res, _$_SearchLocation>
    implements _$$_SearchLocationCopyWith<$Res> {
  __$$_SearchLocationCopyWithImpl(
      _$_SearchLocation _value, $Res Function(_$_SearchLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? coordinate = null,
  }) {
    return _then(_$_SearchLocation(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_SearchLocation implements _SearchLocation {
  const _$_SearchLocation(
      {this.address = '', this.coordinate = const LatLng(0, 0)});

  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final LatLng coordinate;

  @override
  String toString() {
    return 'SearchLocation(address: $address, coordinate: $coordinate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchLocation &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, coordinate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchLocationCopyWith<_$_SearchLocation> get copyWith =>
      __$$_SearchLocationCopyWithImpl<_$_SearchLocation>(this, _$identity);
}

abstract class _SearchLocation implements SearchLocation {
  const factory _SearchLocation(
      {final String address, final LatLng coordinate}) = _$_SearchLocation;

  @override
  String get address;
  @override
  LatLng get coordinate;
  @override
  @JsonKey(ignore: true)
  _$$_SearchLocationCopyWith<_$_SearchLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
