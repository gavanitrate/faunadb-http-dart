import 'package:json_annotation/json_annotation.dart';

part 'query_error.g.dart';

@JsonSerializable()
class QueryError {
  final dynamic position;
  final String code;
  final String description;
  final List<ValidationFailure> failures;

  QueryError({this.position, this.code, this.description, this.failures});

  factory QueryError.fromJson(Map<String, dynamic> json) => _$QueryErrorFromJson(json);

  Map<String, dynamic> toJson() => _$QueryErrorToJson(this);
}

@JsonSerializable()
class ValidationFailure {
  final List<String> field;
  final String code;
  final String description;
  ValidationFailure({
    this.field,
    this.code,
    this.description,
  });

  factory ValidationFailure.fromJson(Map<String, dynamic> json) => _$ValidationFailureFromJson(json);

  Map<String, dynamic> toJson() => _$ValidationFailureToJson(this);
}
