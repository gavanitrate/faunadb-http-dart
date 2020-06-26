// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Object_ _$Object_FromJson(Map<String, dynamic> json) {
  return Object_(
    json['object'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$Object_ToJson(Object_ instance) => <String, dynamic>{
      'object': instance.object,
    };

Select _$SelectFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['default']);
  return Select(
    json['select'],
    json['from'] == null
        ? null
        : Object_.fromJson(json['from'] as Map<String, dynamic>),
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
  $checkKeys(json, disallowNullValues: const ['@ref']);
  return Ref(
    json['ref'],
    json['id'] as String,
    fromRef: json['@ref'] == null
        ? null
        : Ref.fromJson(json['@ref'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RefToJson(Ref instance) {
  final val = <String, dynamic>{
    'ref': instance.schema_ref,
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('@ref', instance.fromRef);
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

Collections _$CollectionsFromJson(Map<String, dynamic> json) {
  return Collections(
    database: json['collections'],
  );
}

Map<String, dynamic> _$CollectionsToJson(Collections instance) =>
    <String, dynamic>{
      'collections': instance.database,
    };

QueryResult _$QueryResultFromJson(Map<String, dynamic> json) {
  return QueryResult(
    resource: json['resource'],
    errors: json['errors'],
  );
}

Map<String, dynamic> _$QueryResultToJson(QueryResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resource', instance.resource);
  writeNotNull('errors', instance.errors);
  return val;
}
