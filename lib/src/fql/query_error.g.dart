// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryError _$QueryErrorFromJson(Map<String, dynamic> json) {
  return QueryError(
    position: json['position'],
    code: json['code'] as String,
    description: json['description'] as String,
    failures: (json['failures'] as List)
        ?.map((e) => e == null
            ? null
            : ValidationFailure.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QueryErrorToJson(QueryError instance) =>
    <String, dynamic>{
      'position': instance.position,
      'code': instance.code,
      'description': instance.description,
      'failures': instance.failures,
    };

ValidationFailure _$ValidationFailureFromJson(Map<String, dynamic> json) {
  return ValidationFailure(
    field: (json['field'] as List)?.map((e) => e as String)?.toList(),
    code: json['code'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$ValidationFailureToJson(ValidationFailure instance) =>
    <String, dynamic>{
      'field': instance.field,
      'code': instance.code,
      'description': instance.description,
    };
