import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';

part 'logic.g.dart';

@JsonSerializable()
class And extends Expr {
  @JsonKey(name: "and")
  final Object value;

  And(this.value);

  factory And.fromJson(Map<String, dynamic> json) => _$AndFromJson(json);

  Map<String, dynamic> toJson() => _$AndToJson(this);
}
