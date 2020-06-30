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
    Expr._unwrap_values(json['object']),
  );
}

Map<String, dynamic> _$ObjToJson(Obj instance) => <String, dynamic>{
      'object': Expr._wrap_values(instance.object),
    };

RefResponse _$RefResponseFromJson(Map<String, dynamic> json) {
  return RefResponse(
    json['id'] as String,
    RefResponse._unwrapCollection(json['collection']),
  );
}

Map<String, dynamic> _$RefResponseToJson(RefResponse instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('collection', instance.collection?.toJson());
  return val;
}

QueryResult _$QueryResultFromJson(Map<String, dynamic> json) {
  return QueryResult(
    resource: Expr._unwrap_values(json['resource']),
    errors: (json['errors'] as List)
        ?.map((e) => e as Map<String, dynamic>)
        ?.toList(),
  );
}

Map<String, dynamic> _$QueryResultToJson(QueryResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resource', Expr._wrap_values(instance.resource));
  writeNotNull('errors', instance.errors);
  return val;
}
