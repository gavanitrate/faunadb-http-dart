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

@JsonSerializable()
class Concat extends Expr {
  @JsonKey(name: "concat")
  final List value;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final String seperator;

  Concat(this.value, {this.seperator});

  factory Concat.fromJson(Map<String, dynamic> json) => _$ConcatFromJson(json);

  Map<String, dynamic> toJson() => _$ConcatToJson(this);
}
