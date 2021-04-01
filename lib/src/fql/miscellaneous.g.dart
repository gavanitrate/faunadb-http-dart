// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miscellaneous.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Abort _$AbortFromJson(Map<String, dynamic> json) {
  return Abort(
    json['abort'] as Object,
  );
}

Map<String, dynamic> _$AbortToJson(Abort instance) => <String, dynamic>{
      'abort': instance.message,
    };

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['database']);
  return Collection(
    json['collection'] as Object,
    database: json['database'],
  );
}

Map<String, dynamic> _$CollectionToJson(Collection instance) {
  final val = <String, dynamic>{
    'collection': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('database', instance.database);
  return val;
}

Collections _$CollectionsFromJson(Map<String, dynamic> json) {
  return Collections(
    database: json['collections'],
  );
}

Map<String, dynamic> _$CollectionsToJson(Collections instance) =>
    <String, dynamic>{
      'collections': instance.database,
    };

Database _$DatabaseFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['scope']);
  return Database(
    json['database'] as Object,
    database: json['scope'] == null
        ? null
        : Expr.fromJson(json['scope'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DatabaseToJson(Database instance) {
  final val = <String, dynamic>{
    'database': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('scope', instance.database);
  return val;
}

Databases _$DatabasesFromJson(Map<String, dynamic> json) {
  return Databases(
    database: json['databases'],
  );
}

Map<String, dynamic> _$DatabasesToJson(Databases instance) => <String, dynamic>{
      'databases': instance.database,
    };

Documents _$DocumentsFromJson(Map<String, dynamic> json) {
  return Documents(
    json['documents'] as Object,
  );
}

Map<String, dynamic> _$DocumentsToJson(Documents instance) => <String, dynamic>{
      'documents': instance.collection,
    };

Function_ _$Function_FromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['database']);
  return Function_(
    json['function'] as String,
    database: json['database'] == null
        ? null
        : Expr.fromJson(json['database'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Function_ToJson(Function_ instance) {
  final val = <String, dynamic>{
    'function': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('database', instance.database);
  return val;
}

Functions _$FunctionsFromJson(Map<String, dynamic> json) {
  return Functions(
    database: json['functions'] == null
        ? null
        : Expr.fromJson(json['functions'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FunctionsToJson(Functions instance) => <String, dynamic>{
      'functions': instance.database,
    };

Index _$IndexFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['database']);
  return Index(
    json['index'] as Object,
    database: json['database'],
  );
}

Map<String, dynamic> _$IndexToJson(Index instance) {
  final val = <String, dynamic>{
    'index': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('database', instance.database);
  return val;
}

Indexes _$IndexesFromJson(Map<String, dynamic> json) {
  return Indexes(
    database: json['indexes'] == null
        ? null
        : Expr.fromJson(json['indexes'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IndexesToJson(Indexes instance) => <String, dynamic>{
      'indexes': instance.database,
    };

NewId _$NewIdFromJson(Map<String, dynamic> json) {
  return NewId();
}

Query _$QueryFromJson(Map<String, dynamic> json) {
  return Query(
    Lambda.fromJson(json['query'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryToJson(Query instance) => <String, dynamic>{
      'query': instance.lambda,
    };

Ref _$RefFromJson(Map<String, dynamic> json) {
  return Ref(
    json['ref'] == null
        ? null
        : Expr.fromJson(json['ref'] as Map<String, dynamic>),
    json['id'] as String?,
  );
}

Map<String, dynamic> _$RefToJson(Ref instance) => <String, dynamic>{
      'ref': instance.schema_ref,
      'id': instance.id,
    };

Role _$RoleFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['database']);
  return Role(
    json['role'] as String,
    database: json['database'],
  );
}

Map<String, dynamic> _$RoleToJson(Role instance) {
  final val = <String, dynamic>{
    'role': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('database', instance.database);
  return val;
}

Roles _$RolesFromJson(Map<String, dynamic> json) {
  return Roles(
    database: json['roles'] == null
        ? null
        : Expr.fromJson(json['roles'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RolesToJson(Roles instance) => <String, dynamic>{
      'roles': instance.database,
    };
