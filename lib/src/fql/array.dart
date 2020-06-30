import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';

part 'array.g.dart';

@JsonSerializable()
class Count extends Expr {
  @JsonKey(name: "count")
  final Object arrayOrSet;

  Count(this.arrayOrSet);

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);

  Map<String, dynamic> toJson() => _$CountToJson(this);
}
