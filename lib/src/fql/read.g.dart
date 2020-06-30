// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Select _$SelectFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['default']);
  return Select(
    json['select'],
    json['from'] == null
        ? null
        : Expr.fromJson(json['from'] as Map<String, dynamic>),
    default_: json['default'],
  );
}

Map<String, dynamic> _$SelectToJson(Select instance) {
  final val = <String, dynamic>{
    'select': instance.path,
    'from': instance.from,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('default', instance.default_);
  return val;
}

Paginate _$PaginateFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['size']);
  return Paginate(
    json['paginate'] == null
        ? null
        : Expr.fromJson(json['paginate'] as Map<String, dynamic>),
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginateToJson(Paginate instance) {
  final val = <String, dynamic>{
    'paginate': instance.input,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('size', instance.size);
  return val;
}

Get _$GetFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['ts']);
  return Get(
    json['get'] == null
        ? null
        : Ref.fromJson(json['get'] as Map<String, dynamic>),
    ts: json['ts'] == null ? null : DateTime.parse(json['ts'] as String),
  );
}

Map<String, dynamic> _$GetToJson(Get instance) {
  final val = <String, dynamic>{
    'get': instance.ref,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ts', instance.ts?.toIso8601String());
  return val;
}

KeyFromSecret _$KeyFromSecretFromJson(Map<String, dynamic> json) {
  return KeyFromSecret(
    json['key_from_secret'] as String,
  );
}

Map<String, dynamic> _$KeyFromSecretToJson(KeyFromSecret instance) =>
    <String, dynamic>{
      'key_from_secret': instance.secret,
    };
