// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchLocationModel _$SearchLocationModelFromJson(Map<String, dynamic> json) {
  return _SearchLocationModel.fromJson(json);
}

/// @nodoc
mixin _$SearchLocationModel {
  int? get placeId => throw _privateConstructorUsedError;
  String? get licence => throw _privateConstructorUsedError;
  String? get osmType => throw _privateConstructorUsedError;
  int? get osmId => throw _privateConstructorUsedError;
  List<String>? get boundingbox => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lon => throw _privateConstructorUsedError;
  String? get display_name => throw _privateConstructorUsedError;
  String? get temperatureClass => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  double? get importance => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  AddressSearchModel? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchLocationModelCopyWith<SearchLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationModelCopyWith<$Res> {
  factory $SearchLocationModelCopyWith(
          SearchLocationModel value, $Res Function(SearchLocationModel) then) =
      _$SearchLocationModelCopyWithImpl<$Res, SearchLocationModel>;
  @useResult
  $Res call(
      {int? placeId,
      String? licence,
      String? osmType,
      int? osmId,
      List<String>? boundingbox,
      String? lat,
      String? lon,
      String? display_name,
      String? temperatureClass,
      String? type,
      double? importance,
      String? icon,
      AddressSearchModel? address});

  $AddressSearchModelCopyWith<$Res>? get address;
}

/// @nodoc
class _$SearchLocationModelCopyWithImpl<$Res, $Val extends SearchLocationModel>
    implements $SearchLocationModelCopyWith<$Res> {
  _$SearchLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = freezed,
    Object? licence = freezed,
    Object? osmType = freezed,
    Object? osmId = freezed,
    Object? boundingbox = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? display_name = freezed,
    Object? temperatureClass = freezed,
    Object? type = freezed,
    Object? importance = freezed,
    Object? icon = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      licence: freezed == licence
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String?,
      osmType: freezed == osmType
          ? _value.osmType
          : osmType // ignore: cast_nullable_to_non_nullable
              as String?,
      osmId: freezed == osmId
          ? _value.osmId
          : osmId // ignore: cast_nullable_to_non_nullable
              as int?,
      boundingbox: freezed == boundingbox
          ? _value.boundingbox
          : boundingbox // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      display_name: freezed == display_name
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String?,
      temperatureClass: freezed == temperatureClass
          ? _value.temperatureClass
          : temperatureClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      importance: freezed == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressSearchModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressSearchModelCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressSearchModelCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchLocationModelCopyWith<$Res>
    implements $SearchLocationModelCopyWith<$Res> {
  factory _$$_SearchLocationModelCopyWith(_$_SearchLocationModel value,
          $Res Function(_$_SearchLocationModel) then) =
      __$$_SearchLocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? placeId,
      String? licence,
      String? osmType,
      int? osmId,
      List<String>? boundingbox,
      String? lat,
      String? lon,
      String? display_name,
      String? temperatureClass,
      String? type,
      double? importance,
      String? icon,
      AddressSearchModel? address});

  @override
  $AddressSearchModelCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_SearchLocationModelCopyWithImpl<$Res>
    extends _$SearchLocationModelCopyWithImpl<$Res, _$_SearchLocationModel>
    implements _$$_SearchLocationModelCopyWith<$Res> {
  __$$_SearchLocationModelCopyWithImpl(_$_SearchLocationModel _value,
      $Res Function(_$_SearchLocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = freezed,
    Object? licence = freezed,
    Object? osmType = freezed,
    Object? osmId = freezed,
    Object? boundingbox = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? display_name = freezed,
    Object? temperatureClass = freezed,
    Object? type = freezed,
    Object? importance = freezed,
    Object? icon = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_SearchLocationModel(
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      licence: freezed == licence
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String?,
      osmType: freezed == osmType
          ? _value.osmType
          : osmType // ignore: cast_nullable_to_non_nullable
              as String?,
      osmId: freezed == osmId
          ? _value.osmId
          : osmId // ignore: cast_nullable_to_non_nullable
              as int?,
      boundingbox: freezed == boundingbox
          ? _value._boundingbox
          : boundingbox // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      display_name: freezed == display_name
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String?,
      temperatureClass: freezed == temperatureClass
          ? _value.temperatureClass
          : temperatureClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      importance: freezed == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressSearchModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchLocationModel implements _SearchLocationModel {
  const _$_SearchLocationModel(
      {this.placeId,
      this.licence,
      this.osmType,
      this.osmId,
      final List<String>? boundingbox,
      this.lat,
      this.lon,
      this.display_name,
      this.temperatureClass,
      this.type,
      this.importance,
      this.icon,
      this.address})
      : _boundingbox = boundingbox;

  factory _$_SearchLocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchLocationModelFromJson(json);

  @override
  final int? placeId;
  @override
  final String? licence;
  @override
  final String? osmType;
  @override
  final int? osmId;
  final List<String>? _boundingbox;
  @override
  List<String>? get boundingbox {
    final value = _boundingbox;
    if (value == null) return null;
    if (_boundingbox is EqualUnmodifiableListView) return _boundingbox;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? lat;
  @override
  final String? lon;
  @override
  final String? display_name;
  @override
  final String? temperatureClass;
  @override
  final String? type;
  @override
  final double? importance;
  @override
  final String? icon;
  @override
  final AddressSearchModel? address;

  @override
  String toString() {
    return 'SearchLocationModel(placeId: $placeId, licence: $licence, osmType: $osmType, osmId: $osmId, boundingbox: $boundingbox, lat: $lat, lon: $lon, display_name: $display_name, temperatureClass: $temperatureClass, type: $type, importance: $importance, icon: $icon, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchLocationModel &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.licence, licence) || other.licence == licence) &&
            (identical(other.osmType, osmType) || other.osmType == osmType) &&
            (identical(other.osmId, osmId) || other.osmId == osmId) &&
            const DeepCollectionEquality()
                .equals(other._boundingbox, _boundingbox) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.display_name, display_name) ||
                other.display_name == display_name) &&
            (identical(other.temperatureClass, temperatureClass) ||
                other.temperatureClass == temperatureClass) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.importance, importance) ||
                other.importance == importance) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      placeId,
      licence,
      osmType,
      osmId,
      const DeepCollectionEquality().hash(_boundingbox),
      lat,
      lon,
      display_name,
      temperatureClass,
      type,
      importance,
      icon,
      address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchLocationModelCopyWith<_$_SearchLocationModel> get copyWith =>
      __$$_SearchLocationModelCopyWithImpl<_$_SearchLocationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchLocationModelToJson(
      this,
    );
  }
}

abstract class _SearchLocationModel implements SearchLocationModel {
  const factory _SearchLocationModel(
      {final int? placeId,
      final String? licence,
      final String? osmType,
      final int? osmId,
      final List<String>? boundingbox,
      final String? lat,
      final String? lon,
      final String? display_name,
      final String? temperatureClass,
      final String? type,
      final double? importance,
      final String? icon,
      final AddressSearchModel? address}) = _$_SearchLocationModel;

  factory _SearchLocationModel.fromJson(Map<String, dynamic> json) =
      _$_SearchLocationModel.fromJson;

  @override
  int? get placeId;
  @override
  String? get licence;
  @override
  String? get osmType;
  @override
  int? get osmId;
  @override
  List<String>? get boundingbox;
  @override
  String? get lat;
  @override
  String? get lon;
  @override
  String? get display_name;
  @override
  String? get temperatureClass;
  @override
  String? get type;
  @override
  double? get importance;
  @override
  String? get icon;
  @override
  AddressSearchModel? get address;
  @override
  @JsonKey(ignore: true)
  _$$_SearchLocationModelCopyWith<_$_SearchLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
