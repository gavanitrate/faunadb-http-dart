// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'array_and_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Append _$AppendFromJson(Map<String, dynamic> json) {
  return Append(
    json['append'],
    json['collection'],
  );
}

Map<String, dynamic> _$AppendToJson(Append instance) => <String, dynamic>{
      'append': instance.base,
      'collection': instance.elems,
    };

Count _$CountFromJson(Map<String, dynamic> json) {
  return Count(
    json['count'],
  );
}

Map<String, dynamic> _$CountToJson(Count instance) => <String, dynamic>{
      'count': instance.arrayOrSet,
    };

Concat _$ConcatFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['seperator']);
  return Concat(
    json['concat'],
    seperator: json['seperator'] as String,
  );
}

Map<String, dynamic> _$ConcatToJson(Concat instance) {
  final val = <String, dynamic>{
    'concat': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seperator', instance.seperator);
  return val;
}

Difference _$DifferenceFromJson(Map<String, dynamic> json) {
  return Difference(
    json['difference'],
    json['diff'],
  );
}

Map<String, dynamic> _$DifferenceToJson(Difference instance) =>
    <String, dynamic>{
      'difference': instance.source,
      'diff': instance.diff,
    };

Distinct _$DistinctFromJson(Map<String, dynamic> json) {
  return Distinct(
    json['distinct'],
  );
}

Map<String, dynamic> _$DistinctToJson(Distinct instance) => <String, dynamic>{
      'distinct': instance.source,
    };

Drop _$DropFromJson(Map<String, dynamic> json) {
  return Drop(
    json['drop'] as int,
    json['collection'],
  );
}

Map<String, dynamic> _$DropToJson(Drop instance) => <String, dynamic>{
      'drop': instance.num,
      'collection': instance.array,
    };

Filter _$FilterFromJson(Map<String, dynamic> json) {
  return Filter(
    json['collection'],
    json['filter'] == null
        ? null
        : Lambda.fromJson(json['filter'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FilterToJson(Filter instance) => <String, dynamic>{
      'collection': instance.arrayOrSet,
      'filter': instance.lambda,
    };

Match _$MatchFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['terms']);
  return Match(
    json['match'] == null
        ? null
        : Ref.fromJson(json['match'] as Map<String, dynamic>),
    terms: json['terms'] as List,
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
