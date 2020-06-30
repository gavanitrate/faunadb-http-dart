import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';
import 'miscellaneous.dart';

part 'set.g.dart';

@JsonSerializable()
class Match extends Expr {
  @JsonKey(name: "match")
  final Ref index;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final List terms;

  Match(this.index, {this.terms});

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  Map<String, dynamic> toJson() => _$MatchToJson(this);
}
