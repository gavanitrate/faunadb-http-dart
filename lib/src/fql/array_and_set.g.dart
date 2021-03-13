// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'array_and_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Append _$AppendFromJson(Map<String, dynamic> json) {
  return Append(
    json['append'] as Object,
    json['collection'] as Object,
  );
}

Map<String, dynamic> _$AppendToJson(Append instance) => <String, dynamic>{
      'append': instance.base,
      'collection': instance.elems,
    };

Count _$CountFromJson(Map<String, dynamic> json) {
  return Count(
    json['count'] as Object,
  );
}

Map<String, dynamic> _$CountToJson(Count instance) => <String, dynamic>{
      'count': instance.arrayOrSet,
    };

Distinct _$DistinctFromJson(Map<String, dynamic> json) {
  return Distinct(
    json['distinct'] as Object,
  );
}

Map<String, dynamic> _$DistinctToJson(Distinct instance) => <String, dynamic>{
      'distinct': instance.source,
    };

Drop _$DropFromJson(Map<String, dynamic> json) {
  return Drop(
    json['drop'] as Object,
    json['collection'] as Object,
  );
}

Map<String, dynamic> _$DropToJson(Drop instance) => <String, dynamic>{
      'drop': instance.num,
      'collection': instance.array,
    };

Filter _$FilterFromJson(Map<String, dynamic> json) {
  return Filter(
    json['collection'] as Object,
    Lambda.fromJson(json['filter'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FilterToJson(Filter instance) => <String, dynamic>{
      'collection': instance.arrayOrSet,
      'filter': instance.lambda,
    };

Foreach _$ForeachFromJson(Map<String, dynamic> json) {
  return Foreach(
    json['foreach'] as Object,
    Lambda.fromJson(json['lambda'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ForeachToJson(Foreach instance) => <String, dynamic>{
      'foreach': instance.array_or_page,
      'lambda': instance.lambda,
    };

Intersection _$IntersectionFromJson(Map<String, dynamic> json) {
  return Intersection(
    json['intersection'] as Object,
  );
}

Map<String, dynamic> _$IntersectionToJson(Intersection instance) =>
    <String, dynamic>{
      'intersection': instance.group,
    };

IsEmpty _$IsEmptyFromJson(Map<String, dynamic> json) {
  return IsEmpty(
    json['is_empty'] as Object,
  );
}

Map<String, dynamic> _$IsEmptyToJson(IsEmpty instance) => <String, dynamic>{
      'is_empty': instance.arrayOrSet,
    };

IsNonEmpty _$IsNonEmptyFromJson(Map<String, dynamic> json) {
  return IsNonEmpty(
    json['is_non_empty'] as Object,
  );
}

Map<String, dynamic> _$IsNonEmptyToJson(IsNonEmpty instance) =>
    <String, dynamic>{
      'is_non_empty': instance.arrayOrSet,
    };

Join _$JoinFromJson(Map<String, dynamic> json) {
  return Join(
    json['join'] as Object,
    json['with'] as Object,
  );
}

Map<String, dynamic> _$JoinToJson(Join instance) => <String, dynamic>{
      'join': instance.source,
      'with': instance.detail,
    };

Map_ _$Map_FromJson(Map<String, dynamic> json) {
  return Map_(
    json['collection'] as Object,
    Lambda.fromJson(json['map'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Map_ToJson(Map_ instance) => <String, dynamic>{
      'collection': instance.array,
      'map': instance.lambda,
    };

Match _$MatchFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['terms']);
  return Match(
    json['match'] as Object,
    terms: json['terms'] as List<dynamic>?,
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

Prepend _$PrependFromJson(Map<String, dynamic> json) {
  return Prepend(
    json['prepend'] as Object,
    json['collection'] as Object,
  );
}

Map<String, dynamic> _$PrependToJson(Prepend instance) => <String, dynamic>{
      'prepend': instance.base,
      'collection': instance.elems,
    };

Singleton _$SingletonFromJson(Map<String, dynamic> json) {
  return Singleton(
    Ref.fromJson(json['singleton'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SingletonToJson(Singleton instance) => <String, dynamic>{
      'singleton': instance.ref,
    };

Take _$TakeFromJson(Map<String, dynamic> json) {
  return Take(
    json['take'] as Object,
    json['collection'] as Object,
  );
}

Map<String, dynamic> _$TakeToJson(Take instance) => <String, dynamic>{
      'take': instance.num,
      'collection': instance.array,
    };

Union _$UnionFromJson(Map<String, dynamic> json) {
  return Union(
    json['union'] as Object,
  );
}

Map<String, dynamic> _$UnionToJson(Union instance) => <String, dynamic>{
      'union': instance.group,
    };
