// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

At _$AtFromJson(Map<String, dynamic> json) {
  return At(
    Time.fromJson(json['at'] as Map<String, dynamic>),
    Expr.fromJson(json['expr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AtToJson(At instance) => <String, dynamic>{
      'at': instance.timestamp,
      'expr': instance.expression,
    };

Call _$CallFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['arguments']);
  return Call(
    json['call'] as Object,
    arguments: json['arguments'],
  );
}

Map<String, dynamic> _$CallToJson(Call instance) {
  final val = <String, dynamic>{
    'call': instance.function,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('arguments', instance.arguments);
  return val;
}

Do _$DoFromJson(Map<String, dynamic> json) {
  return Do(
    json['do'] as List<dynamic>,
  );
}

Map<String, dynamic> _$DoToJson(Do instance) => <String, dynamic>{
      'do': instance.expression,
    };

If _$IfFromJson(Map<String, dynamic> json) {
  return If(
    json['if'] as Object,
    json['then'] as Object,
    json['else'] as Object,
  );
}

Map<String, dynamic> _$IfToJson(If instance) => <String, dynamic>{
      'if': instance.cond,
      'then': instance.true_expr,
      'else': instance.false_expr,
    };

Lambda _$LambdaFromJson(Map<String, dynamic> json) {
  return Lambda(
    json['lambda'] as Object,
    Expr.fromJson(json['expr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LambdaToJson(Lambda instance) => <String, dynamic>{
      'lambda': instance.params,
      'expr': instance.expression,
    };

Let _$LetFromJson(Map<String, dynamic> json) {
  return Let(
    json['let'] as Map<String, dynamic>,
    Expr.fromJson(json['in'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LetToJson(Let instance) => <String, dynamic>{
      'let': instance.bindings,
      'in': instance.in_,
    };

Var _$VarFromJson(Map<String, dynamic> json) {
  return Var(
    json['var'] as String,
  );
}

Map<String, dynamic> _$VarToJson(Var instance) => <String, dynamic>{
      'var': instance.name,
    };
