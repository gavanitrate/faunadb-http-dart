import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';

part 'logic.g.dart';

@JsonSerializable()
class All extends Expr {
  @JsonKey(name: 'all')
  final Object values;

  All(this.values);

  factory All.fromJson(Map<String, dynamic> json) => _$AllFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AllToJson(this);
}

@JsonSerializable()
class Any extends Expr {
  @JsonKey(name: 'any')
  final Object values;

  Any(this.values);

  factory Any.fromJson(Map<String, dynamic> json) => _$AnyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnyToJson(this);
}

@JsonSerializable()
class And extends Expr {
  @JsonKey(name: 'and')
  final Object value;

  And(this.value);

  factory And.fromJson(Map<String, dynamic> json) => _$AndFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AndToJson(this);
}

@JsonSerializable()
class Contains extends Expr {
  @JsonKey(name: 'contains')
  final Object path;

  @JsonKey(name: 'in')
  final Object in_;

  Contains(this.path, this.in_);

  factory Contains.fromJson(Map<String, dynamic> json) =>
      _$ContainsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContainsToJson(this);
}

@JsonSerializable()
class Equals extends Expr {
  @JsonKey(name: 'equals')
  final Object values;

  Equals(this.values);

  factory Equals.fromJson(Map<String, dynamic> json) => _$EqualsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EqualsToJson(this);
}

@JsonSerializable()
class Exists extends Expr {
  @JsonKey(name: 'exists')
  final Object ref;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object? ts;

  Exists(this.ref, {this.ts});

  factory Exists.fromJson(Map<String, dynamic> json) => _$ExistsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExistsToJson(this);
}

@JsonSerializable()
class GT extends Expr {
  @JsonKey(name: 'gt')
  final Object values;

  GT(this.values);

  factory GT.fromJson(Map<String, dynamic> json) => _$GTFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GTToJson(this);
}

@JsonSerializable()
class GTE extends Expr {
  @JsonKey(name: 'gte')
  final Object values;

  GTE(this.values);

  factory GTE.fromJson(Map<String, dynamic> json) => _$GTEFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GTEToJson(this);
}

@JsonSerializable()
class LT extends Expr {
  @JsonKey(name: 'lt')
  final Object values;

  LT(this.values);

  factory LT.fromJson(Map<String, dynamic> json) => _$LTFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LTToJson(this);
}

@JsonSerializable()
class LTE extends Expr {
  @JsonKey(name: 'lte')
  final Object values;

  LTE(this.values);

  factory LTE.fromJson(Map<String, dynamic> json) => _$LTEFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LTEToJson(this);
}

@JsonSerializable()
class Not extends Expr {
  @JsonKey(name: 'not')
  final Object value;

  Not(this.value);

  factory Not.fromJson(Map<String, dynamic> json) => _$NotFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotToJson(this);
}

@JsonSerializable()
class Or extends Expr {
  @JsonKey(name: 'or')
  final Object values;

  Or(this.values);

  factory Or.fromJson(Map<String, dynamic> json) => _$OrFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OrToJson(this);
}
