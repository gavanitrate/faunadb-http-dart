// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Expr _$ExprFromJson(Map<String, dynamic> json) {
  return Expr();
}

Map<String, dynamic> _$ExprToJson(Expr instance) => <String, dynamic>{};

Obj _$ObjFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['object']);
  return Obj(
    Result.unwrap_values(json['object']),
  );
}

Map<String, dynamic> _$ObjToJson(Obj instance) => <String, dynamic>{
      'object': Expr.wrap_values(instance.object),
    };
