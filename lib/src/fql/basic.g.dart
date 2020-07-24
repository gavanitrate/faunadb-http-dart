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

Call _$CallFromJson(Map<String, dynamic> json) {
  return Call(
    json['call'],
    json['arguments'],
  );
}

Map<String, dynamic> _$CallToJson(Call instance) => <String, dynamic>{
      'call': instance.function,
      'arguments': instance.arguments,
    };

Do _$DoFromJson(Map<String, dynamic> json) {
  return Do(
    json['do'] as List,
  );
}

Map<String, dynamic> _$DoToJson(Do instance) => <String, dynamic>{
      'do': instance.expression,
    };

If _$IfFromJson(Map<String, dynamic> json) {
  return If(
    json['if'],
    json['then'],
    json['else'],
  );
}

Map<String, dynamic> _$IfToJson(If instance) => <String, dynamic>{
      'if': instance.cond,
      'then': instance.true_expr,
      'else': instance.false_expr,
    };

Lambda _$LambdaFromJson(Map<String, dynamic> json) {
  return Lambda(
    json['lambda'],
    json['expr'] == null
        ? null
        : Expr.fromJson(json['expr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LambdaToJson(Lambda instance) => <String, dynamic>{
      'lambda': instance.params,
      'expr': instance.expression,
    };

Let _$LetFromJson(Map<String, dynamic> json) {
  return Let(
    json['let'] as Map<String, dynamic>,
    json['in'] == null
        ? null
        : Expr.fromJson(json['in'] as Map<String, dynamic>),
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
