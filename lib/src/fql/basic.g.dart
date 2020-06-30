// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

At _$AtFromJson(Map<String, dynamic> json) {
  return At(
    json['at'] == null
        ? null
        : Time.fromJson(json['at'] as Map<String, dynamic>),
    json['expr'] == null
        ? null
        : Expr.fromJson(json['expr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AtToJson(At instance) => <String, dynamic>{
      'at': instance.timestamp,
      'expr': instance.expression,
    };
