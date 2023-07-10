import 'package:freezed_annotation/freezed_annotation.dart';
part 'error_response.g.dart';

@JsonSerializable()
class ErrorResponse{
  ErrorResponse({
   this.Message,
   this.Info,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);


  final String? Message;
  final Object? Info;
// final Meta? meta;
}