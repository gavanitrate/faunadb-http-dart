// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'array.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
    json['concat'] as List,
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
