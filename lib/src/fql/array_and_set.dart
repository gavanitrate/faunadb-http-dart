import 'package:json_annotation/json_annotation.dart';

import 'basic.dart';
import 'expr.dart';
import 'miscellaneous.dart';

part 'array_and_set.g.dart';

@JsonSerializable()
class Append extends Expr {
  @JsonKey(name: "append")
  final Object base;

  @JsonKey(name: "collection")
  final Object elems;

  Append(this.base, this.elems);

  factory Append.fromJson(Map<String, dynamic> json) => _$AppendFromJson(json);

  Map<String, dynamic> toJson() => _$AppendToJson(this);
}

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
  final Object value;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final String seperator;

  Concat(this.value, {this.seperator});

  factory Concat.fromJson(Map<String, dynamic> json) => _$ConcatFromJson(json);

  Map<String, dynamic> toJson() => _$ConcatToJson(this);
}

@JsonSerializable()
class Difference extends Expr {
  @JsonKey(name: "difference")
  final Object source;

  final Object diff;

  Difference(this.source, this.diff);

  factory Difference.fromJson(Map<String, dynamic> json) {
    final diffs = json["difference"];
    return Difference(diffs[0], diffs[1]);
  }

  Map<String, dynamic> toJson() => {
        "difference": [this.source, this.diff]
      };
}

@JsonSerializable()
class Distinct extends Expr {
  @JsonKey(name: "distinct")
  final Object source;

  Distinct(this.source);

  factory Distinct.fromJson(Map<String, dynamic> json) =>
      _$DistinctFromJson(json);

  Map<String, dynamic> toJson() => _$DistinctToJson(this);
}

@JsonSerializable()
class Drop extends Expr {
  @JsonKey(name: "drop")
  final int num;

  @JsonKey(name: "collection")
  final Object array;

  Drop(this.num, this.array);

  factory Drop.fromJson(Map<String, dynamic> json) => _$DropFromJson(json);

  Map<String, dynamic> toJson() => _$DropToJson(this);
}

@JsonSerializable()
class Filter extends Expr {
  @JsonKey(name: "collection")
  final Object arrayOrSet;

  @JsonKey(name: "filter")
  final Lambda lambda;

  Filter(this.arrayOrSet, this.lambda);

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);

  Map<String, dynamic> toJson() => _$FilterToJson(this);
}

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
