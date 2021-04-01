// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_and_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Get _$GetFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['ts']);
  return Get(
    Expr.fromJson(json['get'] as Map<String, dynamic>),
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

  writeNotNull('ts', Expr.wrap_value(instance.ts));
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
  $checkKeys(json,
      disallowNullValues: const ['ts', 'after', 'size', 'events', 'sources']);
  return Paginate(
    Expr.fromJson(json['paginate'] as Map<String, dynamic>),
    ts: json['ts'] == null ? null : DateTime.parse(json['ts'] as String),
    size: json['size'] as int?,
    before: json['before'] as Object,
    after: json['after'] as Object,
    events: json['events'] as bool?,
    sources: json['sources'] as bool?,
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

  writeNotNull('ts', Expr.wrap_value(instance.ts));
  val['before'] = instance.before;
  val['after'] = instance.after;
  writeNotNull('size', instance.size);
  writeNotNull('events', instance.events);
  writeNotNull('sources', instance.sources);
  return val;
}

Select _$SelectFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['default']);
  return Select(
    json['select'] as Object,
    Expr.fromJson(json['from'] as Map<String, dynamic>),
    default_: json['default'] == null
        ? null
        : Expr.fromJson(json['default'] as Map<String, dynamic>),
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
    Expr.fromJson(json['create'] as Map<String, dynamic>),
    Obj.fromJson(json['params'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateToJson(Create instance) => <String, dynamic>{
      'create': instance.collection,
      'params': instance.param_object,
    };

CreateCollection _$CreateCollectionFromJson(Map<String, dynamic> json) {
  return CreateCollection(
    Obj.fromJson(json['create_collection'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateCollectionToJson(CreateCollection instance) =>
    <String, dynamic>{
      'create_collection': instance.param_object,
    };

CreateDatabase _$CreateDatabaseFromJson(Map<String, dynamic> json) {
  return CreateDatabase(
    Obj.fromJson(json['create_database'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateDatabaseToJson(CreateDatabase instance) =>
    <String, dynamic>{
      'create_database': instance.param_object,
    };

CreateFunction _$CreateFunctionFromJson(Map<String, dynamic> json) {
  return CreateFunction(
    Obj.fromJson(json['create_function'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateFunctionToJson(CreateFunction instance) =>
    <String, dynamic>{
      'create_function': instance.param_object,
    };

CreateIndex _$CreateIndexFromJson(Map<String, dynamic> json) {
  return CreateIndex(
    Obj.fromJson(json['create_index'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateIndexToJson(CreateIndex instance) =>
    <String, dynamic>{
      'create_index': instance.param_object,
    };

CreateKey _$CreateKeyFromJson(Map<String, dynamic> json) {
  return CreateKey(
    Obj.fromJson(json['create_key'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateKeyToJson(CreateKey instance) => <String, dynamic>{
      'create_key': instance.param_object,
    };

CreateRole _$CreateRoleFromJson(Map<String, dynamic> json) {
  return CreateRole(
    Obj.fromJson(json['create_role'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateRoleToJson(CreateRole instance) =>
    <String, dynamic>{
      'create_role': instance.param_object,
    };

Delete _$DeleteFromJson(Map<String, dynamic> json) {
  return Delete(
    Expr.fromJson(json['delete'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeleteToJson(Delete instance) => <String, dynamic>{
      'delete': instance.ref,
    };

Events _$EventsFromJson(Map<String, dynamic> json) {
  return Events(
    json['events'] as Object,
  );
}

Map<String, dynamic> _$EventsToJson(Events instance) => <String, dynamic>{
      'events': instance.input,
    };

Insert _$InsertFromJson(Map<String, dynamic> json) {
  return Insert(
    Expr.fromJson(json['insert'] as Map<String, dynamic>),
    json['ts'] as Object,
    json['action'] as Object,
    Obj.fromJson(json['params'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InsertToJson(Insert instance) => <String, dynamic>{
      'insert': instance.ref,
      'ts': instance.ts,
      'action': instance.action,
      'params': instance.param_object,
    };

Merge _$MergeFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['lambda']);
  return Merge(
    json['merge'] as Object,
    json['with'] as Object,
    customResolver: json['lambda'],
  );
}

Map<String, dynamic> _$MergeToJson(Merge instance) {
  final val = <String, dynamic>{
    'merge': instance.object1,
    'with': instance.object2,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lambda', instance.customResolver);
  return val;
}

Remove _$RemoveFromJson(Map<String, dynamic> json) {
  return Remove(
    Expr.fromJson(json['remove'] as Map<String, dynamic>),
    json['ts'] as Object,
    json['action'] as Object,
  );
}

Map<String, dynamic> _$RemoveToJson(Remove instance) => <String, dynamic>{
      'remove': instance.ref,
      'ts': instance.ts,
      'action': instance.action,
    };

Replace _$ReplaceFromJson(Map<String, dynamic> json) {
  return Replace(
    Expr.fromJson(json['replace'] as Map<String, dynamic>),
    Obj.fromJson(json['params'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ReplaceToJson(Replace instance) => <String, dynamic>{
      'replace': instance.ref,
      'params': instance.param_object,
    };

Update _$UpdateFromJson(Map<String, dynamic> json) {
  return Update(
    Expr.fromJson(json['update'] as Map<String, dynamic>),
    Obj.fromJson(json['params'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdateToJson(Update instance) => <String, dynamic>{
      'update': instance.ref,
      'params': instance.param_object,
    };
