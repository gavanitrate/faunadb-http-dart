// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_and_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Get _$GetFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['ts']);
  return Get(
    json['get'],
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

Create _$CreateFromJson(Map<String, dynamic> json) {
  return Create(
    json['create'] == null
        ? null
        : Collection.fromJson(json['create'] as Map<String, dynamic>),
    json['params'] == null
        ? null
        : Obj.fromJson(json['params'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateToJson(Create instance) => <String, dynamic>{
      'create': instance.collection,
      'params': instance.param_object,
    };

CreateCollection _$CreateCollectionFromJson(Map<String, dynamic> json) {
  return CreateCollection(
    json['create_collection'] == null
        ? null
        : Obj.fromJson(json['create_collection'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateCollectionToJson(CreateCollection instance) =>
    <String, dynamic>{
      'create_collection': instance.param_object,
    };

CreateDatabase _$CreateDatabaseFromJson(Map<String, dynamic> json) {
  return CreateDatabase(
    json['create_database'] == null
        ? null
        : Obj.fromJson(json['create_database'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateDatabaseToJson(CreateDatabase instance) =>
    <String, dynamic>{
      'create_database': instance.param_object,
    };

CreateFunction _$CreateFunctionFromJson(Map<String, dynamic> json) {
  return CreateFunction(
    json['create_function'] == null
        ? null
        : Obj.fromJson(json['create_function'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateFunctionToJson(CreateFunction instance) =>
    <String, dynamic>{
      'create_function': instance.param_object,
    };

CreateIndex _$CreateIndexFromJson(Map<String, dynamic> json) {
  return CreateIndex(
    json['create_index'] == null
        ? null
        : Obj.fromJson(json['create_index'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateIndexToJson(CreateIndex instance) =>
    <String, dynamic>{
      'create_index': instance.param_object,
    };

CreateKey _$CreateKeyFromJson(Map<String, dynamic> json) {
  return CreateKey(
    json['create_key'] == null
        ? null
        : Obj.fromJson(json['create_key'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateKeyToJson(CreateKey instance) => <String, dynamic>{
      'create_key': instance.param_object,
    };

CreateRole _$CreateRoleFromJson(Map<String, dynamic> json) {
  return CreateRole(
    json['create_role'] == null
        ? null
        : Obj.fromJson(json['create_role'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateRoleToJson(CreateRole instance) =>
    <String, dynamic>{
      'create_role': instance.param_object,
    };

Delete _$DeleteFromJson(Map<String, dynamic> json) {
  return Delete(
    json['delete'] == null
        ? null
        : Ref.fromJson(json['delete'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeleteToJson(Delete instance) => <String, dynamic>{
      'delete': instance.ref,
    };

Events _$EventsFromJson(Map<String, dynamic> json) {
  return Events(
    json['events'],
  );
}

Map<String, dynamic> _$EventsToJson(Events instance) => <String, dynamic>{
      'events': instance.input,
    };

Insert _$InsertFromJson(Map<String, dynamic> json) {
  return Insert(
    json['insert'] == null
        ? null
        : Ref.fromJson(json['insert'] as Map<String, dynamic>),
    json['ts'],
    json['action'],
    json['params'] == null
        ? null
        : Obj.fromJson(json['params'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InsertToJson(Insert instance) => <String, dynamic>{
      'insert': instance.ref,
      'ts': instance.ts,
      'action': instance.action,
      'params': instance.param_object,
    };

Remove _$RemoveFromJson(Map<String, dynamic> json) {
  return Remove(
    json['remove'] == null
        ? null
        : Ref.fromJson(json['remove'] as Map<String, dynamic>),
    json['ts'],
    json['action'],
  );
}

Map<String, dynamic> _$RemoveToJson(Remove instance) => <String, dynamic>{
      'remove': instance.ref,
      'ts': instance.ts,
      'action': instance.action,
    };

Replace _$ReplaceFromJson(Map<String, dynamic> json) {
  return Replace(
    json['replace'] == null
        ? null
        : Ref.fromJson(json['replace'] as Map<String, dynamic>),
    json['params'] == null
        ? null
        : Obj.fromJson(json['params'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ReplaceToJson(Replace instance) => <String, dynamic>{
      'replace': instance.ref,
      'params': instance.param_object,
    };

Update _$UpdateFromJson(Map<String, dynamic> json) {
  return Update(
    json['update'] == null
        ? null
        : Ref.fromJson(json['update'] as Map<String, dynamic>),
    json['params'] == null
        ? null
        : Obj.fromJson(json['params'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdateToJson(Update instance) => <String, dynamic>{
      'update': instance.ref,
      'params': instance.param_object,
    };
