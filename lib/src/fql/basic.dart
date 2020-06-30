import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';
import 'time_and_date.dart';

part 'basic.g.dart';

@JsonSerializable()
class At extends Expr {
  @JsonKey(name: "at")
  final Time timestamp;

  @JsonKey(name: "expr")
  final Expr expression;

  At(this.timestamp, this.expression);

  factory At.fromJson(Map<String, dynamic> json) => _$AtFromJson(json);

  Map<String, dynamic> toJson() => _$AtToJson(this);
}
