// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_detail_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarDetailInfo {
  int get id => throw _privateConstructorUsedError;
  String get carName => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  bool get supportDelivery => throw _privateConstructorUsedError;
  List<String> get policies => throw _privateConstructorUsedError;
  List<String> get imageURL => throw _privateConstructorUsedError;
  SearchLocation get address => throw _privateConstructorUsedError;
  OwnerBasicInfo get owner => throw _privateConstructorUsedError;
  String get plate => throw _privateConstructorUsedError;
  List<String> get rentalRequirements => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;
  String get manufacturedYear => throw _privateConstructorUsedError;
  String get seat => throw _privateConstructorUsedError;
  String get transmission => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarDetailInfoCopyWith<CarDetailInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarDetailInfoCopyWith<$Res> {
  factory $CarDetailInfoCopyWith(
          CarDetailInfo value, $Res Function(CarDetailInfo) then) =
      _$CarDetailInfoCopyWithImpl<$Res, CarDetailInfo>;
  @useResult
  $Res call(
      {int id,
      String carName,
      String price,
      String rating,
      bool supportDelivery,
      List<String> policies,
      List<String> imageURL,
      SearchLocation address,
      OwnerBasicInfo owner,
      String plate,
      List<String> rentalRequirements,
      List<String> features,
      String manufacturedYear,
      String seat,
      String transmission,
      String type});

  $SearchLocationCopyWith<$Res> get address;
  $OwnerBasicInfoCopyWith<$Res> get owner;
}

/// @nodoc
class _$CarDetailInfoCopyWithImpl<$Res, $Val extends CarDetailInfo>
    implements $CarDetailInfoCopyWith<$Res> {
  _$CarDetailInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carName = null,
    Object? price = null,
    Object? rating = null,
    Object? supportDelivery = null,
    Object? policies = null,
    Object? imageURL = null,
    Object? address = null,
    Object? owner = null,
    Object? plate = null,
    Object? rentalRequirements = null,
    Object? features = null,
    Object? manufacturedYear = null,
    Object? seat = null,
    Object? transmission = null,
    Object? type = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      supportDelivery: null == supportDelivery
          ? _value.supportDelivery
          : supportDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      policies: null == policies
          ? _value.policies
          : policies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as List<String>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as SearchLocation,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerBasicInfo,
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
      rentalRequirements: null == rentalRequirements
          ? _value.rentalRequirements
          : rentalRequirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      manufacturedYear: null == manufacturedYear
          ? _value.manufacturedYear
          : manufacturedYear // ignore: cast_nullable_to_non_nullable
              as String,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as String,
      transmission: null == transmission
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_CarDetailInfoCopyWith<$Res>
    implements $CarDetailInfoCopyWith<$Res> {
  factory _$$_CarDetailInfoCopyWith(
          _$_CarDetailInfo value, $Res Function(_$_CarDetailInfo) then) =
      __$$_CarDetailInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String carName,
      String price,
      String rating,
      bool supportDelivery,
      List<String> policies,
      List<String> imageURL,
      SearchLocation address,
      OwnerBasicInfo owner,
      String plate,
      List<String> rentalRequirements,
      List<String> features,
      String manufacturedYear,
      String seat,
      String transmission,
      String type});

  @override
  $SearchLocationCopyWith<$Res> get address;
  @override
  $OwnerBasicInfoCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_CarDetailInfoCopyWithImpl<$Res>
    extends _$CarDetailInfoCopyWithImpl<$Res, _$_CarDetailInfo>
    implements _$$_CarDetailInfoCopyWith<$Res> {
  __$$_CarDetailInfoCopyWithImpl(
      _$_CarDetailInfo _value, $Res Function(_$_CarDetailInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carName = null,
    Object? price = null,
    Object? rating = null,
    Object? supportDelivery = null,
    Object? policies = null,
    Object? imageURL = null,
    Object? address = null,
    Object? owner = null,
    Object? plate = null,
    Object? rentalRequirements = null,
    Object? features = null,
    Object? manufacturedYear = null,
    Object? seat = null,
    Object? transmission = null,
    Object? type = null,
  }) {
    return _then(_$_CarDetailInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      carName: null == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      supportDelivery: null == supportDelivery
          ? _value.supportDelivery
          : supportDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      policies: null == policies
          ? _value._policies
          : policies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageURL: null == imageURL
          ? _value._imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as List<String>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as SearchLocation,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerBasicInfo,
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
      rentalRequirements: null == rentalRequirements
          ? _value._rentalRequirements
          : rentalRequirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      manufacturedYear: null == manufacturedYear
          ? _value.manufacturedYear
          : manufacturedYear // ignore: cast_nullable_to_non_nullable
              as String,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as String,
      transmission: null == transmission
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CarDetailInfo implements _CarDetailInfo {
  const _$_CarDetailInfo(
      {this.id = 0,
      this.carName = "Anonymous",
      this.price = "",
      this.rating = "",
      this.supportDelivery = false,
      final List<String> policies = const [],
      final List<String> imageURL = const [],
      this.address =
          const SearchLocation(address: "", coordinate: LatLng(0, 0)),
      this.owner = const OwnerBasicInfo(),
      this.plate = "",
      final List<String> rentalRequirements = const [],
      final List<String> features = const [],
      this.manufacturedYear = "",
      this.seat = "",
      this.transmission = "",
      this.type = ""})
      : _policies = policies,
        _imageURL = imageURL,
        _rentalRequirements = rentalRequirements,
        _features = features;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String carName;
  @override
  @JsonKey()
  final String price;
  @override
  @JsonKey()
  final String rating;
  @override
  @JsonKey()
  final bool supportDelivery;
  final List<String> _policies;
  @override
  @JsonKey()
  List<String> get policies {
    if (_policies is EqualUnmodifiableListView) return _policies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_policies);
  }

  final List<String> _imageURL;
  @override
  @JsonKey()
  List<String> get imageURL {
    if (_imageURL is EqualUnmodifiableListView) return _imageURL;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageURL);
  }

  @override
  @JsonKey()
  final SearchLocation address;
  @override
  @JsonKey()
  final OwnerBasicInfo owner;
  @override
  @JsonKey()
  final String plate;
  final List<String> _rentalRequirements;
  @override
  @JsonKey()
  List<String> get rentalRequirements {
    if (_rentalRequirements is EqualUnmodifiableListView)
      return _rentalRequirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rentalRequirements);
  }

  final List<String> _features;
  @override
  @JsonKey()
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  @JsonKey()
  final String manufacturedYear;
  @override
  @JsonKey()
  final String seat;
  @override
  @JsonKey()
  final String transmission;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'CarDetailInfo(id: $id, carName: $carName, price: $price, rating: $rating, supportDelivery: $supportDelivery, policies: $policies, imageURL: $imageURL, address: $address, owner: $owner, plate: $plate, rentalRequirements: $rentalRequirements, features: $features, manufacturedYear: $manufacturedYear, seat: $seat, transmission: $transmission, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarDetailInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.carName, carName) || other.carName == carName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.supportDelivery, supportDelivery) ||
                other.supportDelivery == supportDelivery) &&
            const DeepCollectionEquality().equals(other._policies, _policies) &&
            const DeepCollectionEquality().equals(other._imageURL, _imageURL) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.plate, plate) || other.plate == plate) &&
            const DeepCollectionEquality()
                .equals(other._rentalRequirements, _rentalRequirements) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.manufacturedYear, manufacturedYear) ||
                other.manufacturedYear == manufacturedYear) &&
            (identical(other.seat, seat) || other.seat == seat) &&
            (identical(other.transmission, transmission) ||
                other.transmission == transmission) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      carName,
      price,
      rating,
      supportDelivery,
      const DeepCollectionEquality().hash(_policies),
      const DeepCollectionEquality().hash(_imageURL),
      address,
      owner,
      plate,
      const DeepCollectionEquality().hash(_rentalRequirements),
      const DeepCollectionEquality().hash(_features),
      manufacturedYear,
      seat,
      transmission,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarDetailInfoCopyWith<_$_CarDetailInfo> get copyWith =>
      __$$_CarDetailInfoCopyWithImpl<_$_CarDetailInfo>(this, _$identity);
}

abstract class _CarDetailInfo implements CarDetailInfo {
  const factory _CarDetailInfo(
      {final int id,
      final String carName,
      final String price,
      final String rating,
      final bool supportDelivery,
      final List<String> policies,
      final List<String> imageURL,
      final SearchLocation address,
      final OwnerBasicInfo owner,
      final String plate,
      final List<String> rentalRequirements,
      final List<String> features,
      final String manufacturedYear,
      final String seat,
      final String transmission,
      final String type}) = _$_CarDetailInfo;

  @override
  int get id;
  @override
  String get carName;
  @override
  String get price;
  @override
  String get rating;
  @override
  bool get supportDelivery;
  @override
  List<String> get policies;
  @override
  List<String> get imageURL;
  @override
  SearchLocation get address;
  @override
  OwnerBasicInfo get owner;
  @override
  String get plate;
  @override
  List<String> get rentalRequirements;
  @override
  List<String> get features;
  @override
  String get manufacturedYear;
  @override
  String get seat;
  @override
  String get transmission;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_CarDetailInfoCopyWith<_$_CarDetailInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
