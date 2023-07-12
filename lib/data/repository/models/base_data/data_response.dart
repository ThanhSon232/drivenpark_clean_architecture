import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class DataResponse<T>{
  DataResponse({
    this.data,
    this.total
    // @JsonKey(name: 'meta') this.meta,
  });

  // ignore: avoid-dynamic
  factory DataResponse.fromJson(Map<String, dynamic> json, T Function(dynamic) fromJsonT) =>
      _$DataResponseFromJson(json, fromJsonT);

  final T? data;
  final int? total;
  // final Meta? meta;
}