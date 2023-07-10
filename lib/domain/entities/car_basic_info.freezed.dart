// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_basic_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarBasicInfo {
  int get id => throw _privateConstructorUsedError;
  String get carName => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  bool get supportDelivery => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  SearchLocation get address => throw _privateConstructorUsedError;
  OwnerBasicInfo get owner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarBasicInfoCopyWith<CarBasicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarBasicInfoCopyWith<$Res> {
  factory $CarBasicInfoCopyWith(
          CarBasicInfo value, $Res Function(CarBasicInfo) then) =
      _$CarBasicInfoCopyWithImpl<$Res, CarBasicInfo>;
  @useResult
  $Res call(
      {int id,
      String carName,
      double rating,
      bool supportDelivery,
      String imageURL,
      SearchLocation address,
      OwnerBasicInfo owner});

  $SearchLocationCopyWith<$Res> get address;
  $OwnerBasicInfoCopyWith<$Res> get owner;
}

/// @nodoc
class _$CarBasicInfoCopyWithImpl<$Res, $Val extends CarBasicInfo>
    implements $CarBasicInfoCopyWith<$Res> {
  _$CarBasicInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carName = null,
    Object? rating = null,
    Object? supportDelivery = null,
    Object? imageURL = null,
    Object? address = null,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      carName: null == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      supportDelivery: null == supportDelivery
          ? _value.supportDelivery
          : supportDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as SearchLocation,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerBasicInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchLocationCopyWith<$Res> get address {
    return $SearchLocationCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerBasicInfoCopyWith<$Res> get owner {
    return $OwnerBasicInfoCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarBasicInfoCopyWith<$Res>
    implements $CarBasicInfoCopyWith<$Res> {
  factory _$$_CarBasicInfoCopyWith(
          _$_CarBasicInfo value, $Res Function(_$_CarBasicInfo) then) =
      __$$_CarBasicInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String carName,
      double rating,
      bool supportDelivery,
      String imageURL,
      SearchLocation address,
      OwnerBasicInfo owner});

  @override
  $SearchLocationCopyWith<$Res> get address;
  @override
  $OwnerBasicInfoCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_CarBasicInfoCopyWithImpl<$Res>
    extends _$CarBasicInfoCopyWithImpl<$Res, _$_CarBasicInfo>
    implements _$$_CarBasicInfoCopyWith<$Res> {
  __$$_CarBasicInfoCopyWithImpl(
      _$_CarBasicInfo _value, $Res Function(_$_CarBasicInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carName = null,
    Object? rating = null,
    Object? supportDelivery = null,
    Object? imageURL = null,
    Object? address = null,
    Object? owner = null,
  }) {
    return _then(_$_CarBasicInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      carName: null == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      supportDelivery: null == supportDelivery
          ? _value.supportDelivery
          : supportDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as SearchLocation,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerBasicInfo,
    ));
  }
}

/// @nodoc

class _$_CarBasicInfo implements _CarBasicInfo {
  const _$_CarBasicInfo(
      {this.id = 0,
      this.carName = "Anonymous",
      this.rating = 0.0,
      this.supportDelivery = false,
      this.imageURL = "Anonymous",
      this.address =
          const SearchLocation(address: "", coordinate: LatLng(0, 0)),
      this.owner = const OwnerBasicInfo()});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String carName;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final bool supportDelivery;
  @override
  @JsonKey()
  final String imageURL;
  @override
  @JsonKey()
  final SearchLocation address;
  @override
  @JsonKey()
  final OwnerBasicInfo owner;

  @override
  String toString() {
    return 'CarBasicInfo(id: $id, carName: $carName, rating: $rating, supportDelivery: $supportDelivery, imageURL: $imageURL, address: $address, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarBasicInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.carName, carName) || other.carName == carName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.supportDelivery, supportDelivery) ||
                other.supportDelivery == supportDelivery) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, carName, rating,
      supportDelivery, imageURL, address, owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarBasicInfoCopyWith<_$_CarBasicInfo> get copyWith =>
      __$$_CarBasicInfoCopyWithImpl<_$_CarBasicInfo>(this, _$identity);
}

abstract class _CarBasicInfo implements CarBasicInfo {
  const factory _CarBasicInfo(
      {final int id,
      final String carName,
      final double rating,
      final bool supportDelivery,
      final String imageURL,
      final SearchLocation address,
      final OwnerBasicInfo owner}) = _$_CarBasicInfo;

  @override
  int get id;
  @override
  String get carName;
  @override
  double get rating;
  @override
  bool get supportDelivery;
  @override
  String get imageURL;
  @override
  SearchLocation get address;
  @override
  OwnerBasicInfo get owner;
  @override
  @JsonKey(ignore: true)
  _$$_CarBasicInfoCopyWith<_$_CarBasicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
