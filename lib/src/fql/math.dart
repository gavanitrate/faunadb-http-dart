import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';

part 'math.g.dart';

@JsonSerializable()
class Abs extends Expr {
  @JsonKey(name: 'abs')
  final Object value;

  Abs(this.value);

  factory Abs.fromJson(Map<String, dynamic> json) => _$AbsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AbsToJson(this);
}

@JsonSerializable()
class Acos extends Expr {
  @JsonKey(name: 'acos')
  final Object value;

  Acos(this.value);

  factory Acos.fromJson(Map<String, dynamic> json) => _$AcosFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AcosToJson(this);
}

@JsonSerializable()
class Add extends Expr {
  @JsonKey(name: 'add')
  final Object values;

  Add(this.values);

  factory Add.fromJson(Map<String, dynamic> json) => _$AddFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddToJson(this);
}

@JsonSerializable()
class Asin extends Expr {
  @JsonKey(name: 'asin')
  final Object value;

  Asin(this.value);

  factory Asin.fromJson(Map<String, dynamic> json) => _$AsinFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AsinToJson(this);
}

@JsonSerializable()
class Atan extends Expr {
  @JsonKey(name: 'atan')
  final Object value;

  Atan(this.value);

  factory Atan.fromJson(Map<String, dynamic> json) => _$AtanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AtanToJson(this);
}

@JsonSerializable()
class BitAnd extends Expr {
  @JsonKey(name: 'bitand')
  final Object values;

  BitAnd(this.values);

  factory BitAnd.fromJson(Map<String, dynamic> json) => _$BitAndFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BitAndToJson(this);
}

@JsonSerializable()
class BitNot extends Expr {
  @JsonKey(name: 'bitnot')
  final Object value;

  BitNot(this.value);

  factory BitNot.fromJson(Map<String, dynamic> json) => _$BitNotFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BitNotToJson(this);
}

@JsonSerializable()
class BitOr extends Expr {
  @JsonKey(name: 'bitor')
  final Object values;

  BitOr(this.values);

  factory BitOr.fromJson(Map<String, dynamic> json) => _$BitOrFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BitOrToJson(this);
}

@JsonSerializable()
class BitXor extends Expr {
  @JsonKey(name: 'bitxor')
  final Object values;

  BitXor(this.values);

  factory BitXor.fromJson(Map<String, dynamic> json) => _$BitXorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BitXorToJson(this);
}

@JsonSerializable()
class Ceil extends Expr {
  @JsonKey(name: 'ceil')
  final Object value;

  Ceil(this.value);

  factory Ceil.fromJson(Map<String, dynamic> json) => _$CeilFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CeilToJson(this);
}

@JsonSerializable()
class Cos extends Expr {
  @JsonKey(name: 'cos')
  final Object value;

  Cos(this.value);

  factory Cos.fromJson(Map<String, dynamic> json) => _$CosFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CosToJson(this);
}

@JsonSerializable()
class Cosh extends Expr {
  @JsonKey(name: 'cosh')
  final Object value;

  Cosh(this.value);

  factory Cosh.fromJson(Map<String, dynamic> json) => _$CoshFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CoshToJson(this);
}

@JsonSerializable()
class Degrees extends Expr {
  @JsonKey(name: 'degrees')
  final Object value;

  Degrees(this.value);

  factory Degrees.fromJson(Map<String, dynamic> json) =>
      _$DegreesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DegreesToJson(this);
}

@JsonSerializable()
class Divide extends Expr {
  @JsonKey(name: 'divide')
  final Object values;

  Divide(this.values);

  factory Divide.fromJson(Map<String, dynamic> json) => _$DivideFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DivideToJson(this);
}

@JsonSerializable()
class Exp extends Expr {
  @JsonKey(name: 'exp')
  final Object value;

  Exp(this.value);

  factory Exp.fromJson(Map<String, dynamic> json) => _$ExpFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExpToJson(this);
}

@JsonSerializable()
class Floor extends Expr {
  @JsonKey(name: 'floor')
  final Object value;

  Floor(this.value);

  factory Floor.fromJson(Map<String, dynamic> json) => _$FloorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FloorToJson(this);
}

@JsonSerializable()
class Hypot extends Expr {
  @JsonKey(name: 'hypot')
  final Object a;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object? b;

  Hypot(this.a, {this.b});

  factory Hypot.fromJson(Map<String, dynamic> json) => _$HypotFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HypotToJson(this);
}

@JsonSerializable()
class Ln extends Expr {
  @JsonKey(name: 'ln')
  final Object value;

  Ln(this.value);

  factory Ln.fromJson(Map<String, dynamic> json) => _$LnFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LnToJson(this);
}

@JsonSerializable()
class Log extends Expr {
  @JsonKey(name: 'log')
  final Object value;

  Log(this.value);

  factory Log.fromJson(Map<String, dynamic> json) => _$LogFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LogToJson(this);
}

@JsonSerializable()
class Max extends Expr {
  @JsonKey(name: 'max')
  final Object value;

  Max(this.value);

  factory Max.fromJson(Map<String, dynamic> json) => _$MaxFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MaxToJson(this);
}

@JsonSerializable()
class Mean extends Expr {
  @JsonKey(name: 'mean')
  final Object arrayOrSet;

  Mean(this.arrayOrSet);

  factory Mean.fromJson(Map<String, dynamic> json) => _$MeanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeanToJson(this);
}

@JsonSerializable()
class Min extends Expr {
  @JsonKey(name: 'min')
  final Object arrayOrSet;

  Min(this.arrayOrSet);

  factory Min.fromJson(Map<String, dynamic> json) => _$MinFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MinToJson(this);
}

@JsonSerializable()
class Modulo extends Expr {
  @JsonKey(name: 'modulo')
  final Object values;

  Modulo(this.values);

  factory Modulo.fromJson(Map<String, dynamic> json) => _$ModuloFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ModuloToJson(this);
}

@JsonSerializable()
class Multiply extends Expr {
  @JsonKey(name: 'multiply')
  final Object values;

  Multiply(this.values);

  factory Multiply.fromJson(Map<String, dynamic> json) =>
      _$MultiplyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MultiplyToJson(this);
}

@JsonSerializable()
class Pow extends Expr {
  @JsonKey(name: 'pow')
  final Object value;

  @JsonKey(name: 'exp')
  final Object exponent;

  Pow(this.value, this.exponent);

  factory Pow.fromJson(Map<String, dynamic> json) => _$PowFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PowToJson(this);
}

@JsonSerializable()
class Radians extends Expr {
  @JsonKey(name: 'radians')
  final Object value;

  Radians(this.value);

  factory Radians.fromJson(Map<String, dynamic> json) =>
      _$RadiansFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RadiansToJson(this);
}

@JsonSerializable()
class Round extends Expr {
  @JsonKey(name: 'round')
  final Object value;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object? precision;

  Round(this.value, {this.precision});

  factory Round.fromJson(Map<String, dynamic> json) => _$RoundFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RoundToJson(this);
}

@JsonSerializable()
class Sign extends Expr {
  @JsonKey(name: 'sign')
  final Object value;

  Sign(this.value);

  factory Sign.fromJson(Map<String, dynamic> json) => _$SignFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SignToJson(this);
}

@JsonSerializable()
class Sin extends Expr {
  @JsonKey(name: 'sin')
  final Object value;

  Sin(this.value);

  factory Sin.fromJson(Map<String, dynamic> json) => _$SinFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SinToJson(this);
}

@JsonSerializable()
class Sinh extends Expr {
  @JsonKey(name: 'sinh')
  final Object value;

  Sinh(this.value);

  factory Sinh.fromJson(Map<String, dynamic> json) => _$SinhFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SinhToJson(this);
}

@JsonSerializable()
class Sqrt extends Expr {
  @JsonKey(name: 'sqrt')
  final Object value;

  Sqrt(this.value);

  factory Sqrt.fromJson(Map<String, dynamic> json) => _$SqrtFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SqrtToJson(this);
}

@JsonSerializable()
class Subtract extends Expr {
  @JsonKey(name: 'subtract')
  final Object values;

  Subtract(this.values);

  factory Subtract.fromJson(Map<String, dynamic> json) =>
      _$SubtractFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubtractToJson(this);
}

@JsonSerializable()
class Sum extends Expr {
  @JsonKey(name: 'sum')
  final Object arrayOrSet;

  Sum(this.arrayOrSet);

  factory Sum.fromJson(Map<String, dynamic> json) => _$SumFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SumToJson(this);
}

@JsonSerializable()
class Tan extends Expr {
  @JsonKey(name: 'tan')
  final Object value;

  Tan(this.value);

  factory Tan.fromJson(Map<String, dynamic> json) => _$TanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TanToJson(this);
}

@JsonSerializable()
class Tanh extends Expr {
  @JsonKey(name: 'tanh')
  final Object value;

  Tanh(this.value);

  factory Tanh.fromJson(Map<String, dynamic> json) => _$TanhFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TanhToJson(this);
}

@JsonSerializable()
class Trunc extends Expr {
  @JsonKey(name: 'trunc')
  final Object value;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object? precision;

  Trunc(this.value, {this.precision});

  factory Trunc.fromJson(Map<String, dynamic> json) => _$TruncFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TruncToJson(this);
}
