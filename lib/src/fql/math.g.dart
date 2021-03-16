// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'math.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Abs _$AbsFromJson(Map<String, dynamic> json) {
  return Abs(
    json['abs'] as Object,
  );
}

Map<String, dynamic> _$AbsToJson(Abs instance) => <String, dynamic>{
      'abs': instance.value,
    };

Acos _$AcosFromJson(Map<String, dynamic> json) {
  return Acos(
    json['acos'] as Object,
  );
}

Map<String, dynamic> _$AcosToJson(Acos instance) => <String, dynamic>{
      'acos': instance.value,
    };

Add _$AddFromJson(Map<String, dynamic> json) {
  return Add(
    json['add'] as Object,
  );
}

Map<String, dynamic> _$AddToJson(Add instance) => <String, dynamic>{
      'add': instance.values,
    };

Asin _$AsinFromJson(Map<String, dynamic> json) {
  return Asin(
    json['asin'] as Object,
  );
}

Map<String, dynamic> _$AsinToJson(Asin instance) => <String, dynamic>{
      'asin': instance.value,
    };

Atan _$AtanFromJson(Map<String, dynamic> json) {
  return Atan(
    json['atan'] as Object,
  );
}

Map<String, dynamic> _$AtanToJson(Atan instance) => <String, dynamic>{
      'atan': instance.value,
    };

BitAnd _$BitAndFromJson(Map<String, dynamic> json) {
  return BitAnd(
    json['bitand'] as Object,
  );
}

Map<String, dynamic> _$BitAndToJson(BitAnd instance) => <String, dynamic>{
      'bitand': instance.values,
    };

BitNot _$BitNotFromJson(Map<String, dynamic> json) {
  return BitNot(
    json['bitnot'] as Object,
  );
}

Map<String, dynamic> _$BitNotToJson(BitNot instance) => <String, dynamic>{
      'bitnot': instance.value,
    };

BitOr _$BitOrFromJson(Map<String, dynamic> json) {
  return BitOr(
    json['bitor'] as Object,
  );
}

Map<String, dynamic> _$BitOrToJson(BitOr instance) => <String, dynamic>{
      'bitor': instance.values,
    };

BitXor _$BitXorFromJson(Map<String, dynamic> json) {
  return BitXor(
    json['bitxor'] as Object,
  );
}

Map<String, dynamic> _$BitXorToJson(BitXor instance) => <String, dynamic>{
      'bitxor': instance.values,
    };

Ceil _$CeilFromJson(Map<String, dynamic> json) {
  return Ceil(
    json['ceil'] as Object,
  );
}

Map<String, dynamic> _$CeilToJson(Ceil instance) => <String, dynamic>{
      'ceil': instance.value,
    };

Cos _$CosFromJson(Map<String, dynamic> json) {
  return Cos(
    json['cos'] as Object,
  );
}

Map<String, dynamic> _$CosToJson(Cos instance) => <String, dynamic>{
      'cos': instance.value,
    };

Cosh _$CoshFromJson(Map<String, dynamic> json) {
  return Cosh(
    json['cosh'] as Object,
  );
}

Map<String, dynamic> _$CoshToJson(Cosh instance) => <String, dynamic>{
      'cosh': instance.value,
    };

Degrees _$DegreesFromJson(Map<String, dynamic> json) {
  return Degrees(
    json['degrees'] as Object,
  );
}

Map<String, dynamic> _$DegreesToJson(Degrees instance) => <String, dynamic>{
      'degrees': instance.value,
    };

Divide _$DivideFromJson(Map<String, dynamic> json) {
  return Divide(
    json['divide'] as Object,
  );
}

Map<String, dynamic> _$DivideToJson(Divide instance) => <String, dynamic>{
      'divide': instance.values,
    };

Exp _$ExpFromJson(Map<String, dynamic> json) {
  return Exp(
    json['exp'] as Object,
  );
}

Map<String, dynamic> _$ExpToJson(Exp instance) => <String, dynamic>{
      'exp': instance.value,
    };

Floor _$FloorFromJson(Map<String, dynamic> json) {
  return Floor(
    json['floor'] as Object,
  );
}

Map<String, dynamic> _$FloorToJson(Floor instance) => <String, dynamic>{
      'floor': instance.value,
    };

Hypot _$HypotFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['b']);
  return Hypot(
    json['hypot'] as Object,
    b: json['b'],
  );
}

Map<String, dynamic> _$HypotToJson(Hypot instance) {
  final val = <String, dynamic>{
    'hypot': instance.a,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('b', instance.b);
  return val;
}

Ln _$LnFromJson(Map<String, dynamic> json) {
  return Ln(
    json['ln'] as Object,
  );
}

Map<String, dynamic> _$LnToJson(Ln instance) => <String, dynamic>{
      'ln': instance.value,
    };

Log _$LogFromJson(Map<String, dynamic> json) {
  return Log(
    json['log'] as Object,
  );
}

Map<String, dynamic> _$LogToJson(Log instance) => <String, dynamic>{
      'log': instance.value,
    };

Max _$MaxFromJson(Map<String, dynamic> json) {
  return Max(
    json['max'] as Object,
  );
}

Map<String, dynamic> _$MaxToJson(Max instance) => <String, dynamic>{
      'max': instance.value,
    };

Mean _$MeanFromJson(Map<String, dynamic> json) {
  return Mean(
    json['mean'] as Object,
  );
}

Map<String, dynamic> _$MeanToJson(Mean instance) => <String, dynamic>{
      'mean': instance.arrayOrSet,
    };

Min _$MinFromJson(Map<String, dynamic> json) {
  return Min(
    json['min'] as Object,
  );
}

Map<String, dynamic> _$MinToJson(Min instance) => <String, dynamic>{
      'min': instance.arrayOrSet,
    };

Modulo _$ModuloFromJson(Map<String, dynamic> json) {
  return Modulo(
    json['modulo'] as Object,
  );
}

Map<String, dynamic> _$ModuloToJson(Modulo instance) => <String, dynamic>{
      'modulo': instance.values,
    };

Multiply _$MultiplyFromJson(Map<String, dynamic> json) {
  return Multiply(
    json['multiply'] as Object,
  );
}

Map<String, dynamic> _$MultiplyToJson(Multiply instance) => <String, dynamic>{
      'multiply': instance.values,
    };

Pow _$PowFromJson(Map<String, dynamic> json) {
  return Pow(
    json['pow'] as Object,
    json['exp'] as Object,
  );
}

Map<String, dynamic> _$PowToJson(Pow instance) => <String, dynamic>{
      'pow': instance.value,
      'exp': instance.exponent,
    };

Radians _$RadiansFromJson(Map<String, dynamic> json) {
  return Radians(
    json['radians'] as Object,
  );
}

Map<String, dynamic> _$RadiansToJson(Radians instance) => <String, dynamic>{
      'radians': instance.value,
    };

Round _$RoundFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['precision']);
  return Round(
    json['round'] as Object,
    precision: json['precision'],
  );
}

Map<String, dynamic> _$RoundToJson(Round instance) {
  final val = <String, dynamic>{
    'round': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('precision', instance.precision);
  return val;
}

Sign _$SignFromJson(Map<String, dynamic> json) {
  return Sign(
    json['sign'] as Object,
  );
}

Map<String, dynamic> _$SignToJson(Sign instance) => <String, dynamic>{
      'sign': instance.value,
    };

Sin _$SinFromJson(Map<String, dynamic> json) {
  return Sin(
    json['sin'] as Object,
  );
}

Map<String, dynamic> _$SinToJson(Sin instance) => <String, dynamic>{
      'sin': instance.value,
    };

Sinh _$SinhFromJson(Map<String, dynamic> json) {
  return Sinh(
    json['sinh'] as Object,
  );
}

Map<String, dynamic> _$SinhToJson(Sinh instance) => <String, dynamic>{
      'sinh': instance.value,
    };

Sqrt _$SqrtFromJson(Map<String, dynamic> json) {
  return Sqrt(
    json['sqrt'] as Object,
  );
}

Map<String, dynamic> _$SqrtToJson(Sqrt instance) => <String, dynamic>{
      'sqrt': instance.value,
    };

Subtract _$SubtractFromJson(Map<String, dynamic> json) {
  return Subtract(
    json['subtract'] as Object,
  );
}

Map<String, dynamic> _$SubtractToJson(Subtract instance) => <String, dynamic>{
      'subtract': instance.values,
    };

Sum _$SumFromJson(Map<String, dynamic> json) {
  return Sum(
    json['sum'] as Object,
  );
}

Map<String, dynamic> _$SumToJson(Sum instance) => <String, dynamic>{
      'sum': instance.arrayOrSet,
    };

Tan _$TanFromJson(Map<String, dynamic> json) {
  return Tan(
    json['tan'] as Object,
  );
}

Map<String, dynamic> _$TanToJson(Tan instance) => <String, dynamic>{
      'tan': instance.value,
    };

Tanh _$TanhFromJson(Map<String, dynamic> json) {
  return Tanh(
    json['tanh'] as Object,
  );
}

Map<String, dynamic> _$TanhToJson(Tanh instance) => <String, dynamic>{
      'tanh': instance.value,
    };

Trunc _$TruncFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['precision']);
  return Trunc(
    json['trunc'] as Object,
    precision: json['precision'],
  );
}

Map<String, dynamic> _$TruncToJson(Trunc instance) {
  final val = <String, dynamic>{
    'trunc': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('precision', instance.precision);
  return val;
}
