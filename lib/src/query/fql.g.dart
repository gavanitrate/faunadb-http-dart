// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Paginate _$PaginateFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['size']);
  return Paginate(
    json['paginate'],
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

Match _$MatchFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['terms']);
  return Match(
    json['match'],
    terms: (json['terms'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$MatchToJson(Match instance) {
  final val = <String, dynamic>{
    'match': instance.index,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('terms', instance.terms);
  return val;
}

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

Ref _$RefFromJson(Map<String, dynamic> json) {
  return Ref(
    json['@ref'],
    json['id'] as String,
  );
}

Map<String, dynamic> _$RefToJson(Ref instance) => <String, dynamic>{
      '@ref': instance.schema_ref,
      'id': instance.id,
    };

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
