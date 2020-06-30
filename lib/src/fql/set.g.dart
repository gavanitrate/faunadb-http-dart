// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
