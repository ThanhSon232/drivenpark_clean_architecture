// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchLocationResponse _$SearchLocationResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchLocationResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchLocationResponse {
  List<SearchLocationModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchLocationResponseCopyWith<SearchLocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationResponseCopyWith<$Res> {
  factory $SearchLocationResponseCopyWith(SearchLocationResponse value,
          $Res Function(SearchLocationResponse) then) =
      _$SearchLocationResponseCopyWithImpl<$Res, SearchLocationResponse>;
  @useResult
  $Res call({List<SearchLocationModel>? data});
}

/// @nodoc
class _$SearchLocationResponseCopyWithImpl<$Res,
        $Val extends SearchLocationResponse>
    implements $SearchLocationResponseCopyWith<$Res> {
  _$SearchLocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchLocationModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchLocationResponseCopyWith<$Res>
    implements $SearchLocationResponseCopyWith<$Res> {
  factory _$$_SearchLocationResponseCopyWith(_$_SearchLocationResponse value,
          $Res Function(_$_SearchLocationResponse) then) =
      __$$_SearchLocationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SearchLocationModel>? data});
}

/// @nodoc
class __$$_SearchLocationResponseCopyWithImpl<$Res>
    extends _$SearchLocationResponseCopyWithImpl<$Res,
        _$_SearchLocationResponse>
    implements _$$_SearchLocationResponseCopyWith<$Res> {
  __$$_SearchLocationResponseCopyWithImpl(_$_SearchLocationResponse _value,
      $Res Function(_$_SearchLocationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_SearchLocationResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchLocationModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchLocationResponse implements _SearchLocationResponse {
  const _$_SearchLocationResponse({final List<SearchLocationModel>? data})
      : _data = data;

  factory _$_SearchLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchLocationResponseFromJson(json);

  final List<SearchLocationModel>? _data;
  @override
  List<SearchLocationModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchLocationResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchLocationResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchLocationResponseCopyWith<_$_SearchLocationResponse> get copyWith =>
      __$$_SearchLocationResponseCopyWithImpl<_$_SearchLocationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchLocationResponseToJson(
      this,
    );
  }
}

abstract class _SearchLocationResponse implements SearchLocationResponse {
  const factory _SearchLocationResponse(
      {final List<SearchLocationModel>? data}) = _$_SearchLocationResponse;

  factory _SearchLocationResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchLocationResponse.fromJson;

  @override
  List<SearchLocationModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SearchLocationResponseCopyWith<_$_SearchLocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
