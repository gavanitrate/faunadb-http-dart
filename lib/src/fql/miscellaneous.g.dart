// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miscellaneous.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ref _$RefFromJson(Map<String, dynamic> json) {
  return Ref(
    json['ref'] == null
        ? null
        : Expr.fromJson(json['ref'] as Map<String, dynamic>),
    json['id'] as String,
  );
}

Map<String, dynamic> _$RefToJson(Ref instance) => <String, dynamic>{
      'ref': instance.schema_ref,
      'id': instance.id,
    };

Index _$IndexFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['database']);
  return Index(
    json['index'] as String,
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

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['database']);
  return Collection(
    json['collection'] as String,
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

Database _$DatabaseFromJson(Map<String, dynamic> json) {
  return Database(
    json['database'] as String,
  );
}

Map<String, dynamic> _$DatabaseToJson(Database instance) => <String, dynamic>{
      'database': instance.name,
    };

Collections _$CollectionsFromJson(Map<String, dynamic> json) {
  return Collections(
    database: json['collections'],
  );
}

Map<String, dynamic> _$CollectionsToJson(Collections instance) =>
    <String, dynamic>{
      'collections': instance.database,
    };

Documents _$DocumentsFromJson(Map<String, dynamic> json) {
  return Documents(
    json['documents'] == null
        ? null
        : Collection.fromJson(json['documents'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DocumentsToJson(Documents instance) => <String, dynamic>{
      'documents': instance.collection,
    };
