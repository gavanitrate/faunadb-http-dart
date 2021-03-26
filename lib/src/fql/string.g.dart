// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Casefold _$CasefoldFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['normalizer']);
  return Casefold(
    json['casefold'] as Object,
    normalizer: json['normalizer'] as String?,
  );
}

Map<String, dynamic> _$CasefoldToJson(Casefold instance) {
  final val = <String, dynamic>{
    'casefold': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('normalizer', instance.normalizer);
  return val;
}

Concat _$ConcatFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['seperator']);
  return Concat(
    json['concat'] as Object,
    seperator: json['seperator'] as String?,
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

FindStr _$FindStrFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['start']);
  return FindStr(
    json['findstr'] as Object,
    json['find'] as Object,
    start: json['start'],
  );
}

Map<String, dynamic> _$FindStrToJson(FindStr instance) {
  final val = <String, dynamic>{
    'findstr': instance.value,
    'find': instance.find,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('start', instance.start);
  return val;
}

FindStrRegex _$FindStrRegexFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['start', 'num_results']);
  return FindStrRegex(
    json['findstrregex'] as Object,
    json['pattern'] as Object,
    start: json['start'],
    max_results: json['num_results'],
  );
}

Map<String, dynamic> _$FindStrRegexToJson(FindStrRegex instance) {
  final val = <String, dynamic>{
    'findstrregex': instance.value,
    'pattern': instance.find,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('start', instance.start);
  writeNotNull('num_results', instance.max_results);
  return val;
}

LTrim _$LTrimFromJson(Map<String, dynamic> json) {
  return LTrim(
    json['ltrim'] as Object,
  );
}

Map<String, dynamic> _$LTrimToJson(LTrim instance) => <String, dynamic>{
      'ltrim': instance.value,
    };

Length _$LengthFromJson(Map<String, dynamic> json) {
  return Length(
    json['length'] as Object,
  );
}

Map<String, dynamic> _$LengthToJson(Length instance) => <String, dynamic>{
      'length': instance.value,
    };

LowerCase _$LowerCaseFromJson(Map<String, dynamic> json) {
  return LowerCase(
    json['lowercase'] as Object,
  );
}

Map<String, dynamic> _$LowerCaseToJson(LowerCase instance) => <String, dynamic>{
      'lowercase': instance.value,
    };

NGram _$NGramFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['min', 'max']);
  return NGram(
    json['ngram'] as Object,
    min: json['min'],
    max: json['max'],
  );
}

Map<String, dynamic> _$NGramToJson(NGram instance) {
  final val = <String, dynamic>{
    'ngram': instance.input,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('min', instance.min);
  writeNotNull('max', instance.max);
  return val;
}

RTrim _$RTrimFromJson(Map<String, dynamic> json) {
  return RTrim(
    json['rtrim'] as Object,
  );
}

Map<String, dynamic> _$RTrimToJson(RTrim instance) => <String, dynamic>{
      'rtrim': instance.value,
    };

Repeat _$RepeatFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['number']);
  return Repeat(
    json['repeat'] as Object,
    number: json['number'],
  );
}

Map<String, dynamic> _$RepeatToJson(Repeat instance) {
  final val = <String, dynamic>{
    'repeat': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('number', instance.number);
  return val;
}

ReplaceStr _$ReplaceStrFromJson(Map<String, dynamic> json) {
  return ReplaceStr(
    json['replacestr'] as Object,
    json['find'] as Object,
    json['replace'] as Object,
  );
}

Map<String, dynamic> _$ReplaceStrToJson(ReplaceStr instance) =>
    <String, dynamic>{
      'replacestr': instance.value,
      'find': instance.find,
      'replace': instance.replace,
    };

ReplaceStrRegex _$ReplaceStrRegexFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['first']);
  return ReplaceStrRegex(
    json['replacestrregex'] as Object,
    json['pattern'] as Object,
    json['replace'] as Object,
    first_only: json['first'],
  );
}

Map<String, dynamic> _$ReplaceStrRegexToJson(ReplaceStrRegex instance) {
  final val = <String, dynamic>{
    'replacestrregex': instance.value,
    'pattern': instance.pattern,
    'replace': instance.replace,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first', instance.first_only);
  return val;
}

Space _$SpaceFromJson(Map<String, dynamic> json) {
  return Space(
    json['space'] as Object,
  );
}

Map<String, dynamic> _$SpaceToJson(Space instance) => <String, dynamic>{
      'space': instance.count,
    };

SubString _$SubStringFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['length']);
  return SubString(
    json['substring'] as Object,
    json['start'] as Object,
    length: json['length'],
  );
}

Map<String, dynamic> _$SubStringToJson(SubString instance) {
  final val = <String, dynamic>{
    'substring': instance.value,
    'start': instance.start,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('length', instance.length);
  return val;
}

TitleCase _$TitleCaseFromJson(Map<String, dynamic> json) {
  return TitleCase(
    json['titlecase'] as Object,
  );
}

Map<String, dynamic> _$TitleCaseToJson(TitleCase instance) => <String, dynamic>{
      'titlecase': instance.value,
    };

Trim _$TrimFromJson(Map<String, dynamic> json) {
  return Trim(
    json['trim'] as Object,
  );
}

Map<String, dynamic> _$TrimToJson(Trim instance) => <String, dynamic>{
      'trim': instance.value,
    };

UpperCase _$UpperCaseFromJson(Map<String, dynamic> json) {
  return UpperCase(
    json['uppercase'] as Object,
  );
}

Map<String, dynamic> _$UpperCaseToJson(UpperCase instance) => <String, dynamic>{
      'uppercase': instance.value,
    };
