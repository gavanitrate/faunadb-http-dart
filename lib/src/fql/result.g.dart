// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefResult _$RefResultFromJson(Map<String, dynamic> json) {
  return RefResult(
    json['id'] as String,
    RefResult._unwrapCollection(json['collection']),
  );
}

Map<String, dynamic> _$RefResultToJson(RefResult instance) {
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
    json['lambda'] as Object,
    Result.unwrap_values(json['expr']),
  );
}

Map<String, dynamic> _$QueryResultToJson(QueryResult instance) =>
    <String, dynamic>{
      'lambda': instance.params,
      'expr': instance.expression,
    };

FaunaResponse _$FaunaResponseFromJson(Map<String, dynamic> json) {
  return FaunaResponse(
    resource: Result.unwrap_values(json['resource']),
    errors: (json['errors'] as List<dynamic>?)
        ?.map((e) => e as Map<String, dynamic>)
        .toList(),
  );
}

Map<String, dynamic> _$FaunaResponseToJson(FaunaResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resource', Expr.wrap_values(instance.resource));
  writeNotNull('errors', instance.errors);
  return val;
}
