import 'package:json_annotation/json_annotation.dart';

import 'basic.dart';
import 'expr.dart';
import 'miscellaneous.dart';

part 'array_and_set.g.dart';

@JsonSerializable()
class Append extends Expr {
  @JsonKey(name: 'append')
  final Object base;

  @JsonKey(name: 'collection')
  final Object elems;

  Append(this.base, this.elems);

  factory Append.fromJson(Map<String, dynamic> json) => _$AppendFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AppendToJson(this);
}

@JsonSerializable()
class Count extends Expr {
  @JsonKey(name: 'count')
  final Object arrayOrSet;

  Count(this.arrayOrSet);

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CountToJson(this);
}

@JsonSerializable(createFactory: false, createToJson: false)
class Difference extends Expr {
  @JsonKey(name: 'difference')
  final Object source;

  final Object diff;

  Difference(this.source, this.diff);

  factory Difference.fromJson(Map<String, dynamic> json) {
    final diffs = json['difference'];
    return Difference(diffs[0], diffs[1]);
  }

  @override
  Map<String, dynamic> toJson() => {
        'difference': [source, diff]
      };
}

@JsonSerializable()
class Distinct extends Expr {
  @JsonKey(name: 'distinct')
  final Object source;

  Distinct(this.source);

  factory Distinct.fromJson(Map<String, dynamic> json) =>
      _$DistinctFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DistinctToJson(this);
}

@JsonSerializable()
class Drop extends Expr {
  @JsonKey(name: 'drop')
  final Object num;

  @JsonKey(name: 'collection')
  final Object array;

  Drop(this.num, this.array);

  factory Drop.fromJson(Map<String, dynamic> json) => _$DropFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DropToJson(this);
}

@JsonSerializable()
class Filter extends Expr {
  @JsonKey(name: 'collection')
  final Object arrayOrSet;

  @JsonKey(name: 'filter')
  final Lambda lambda;

  Filter(this.arrayOrSet, this.lambda);

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FilterToJson(this);
}

@JsonSerializable()
class Foreach extends Expr {
  @JsonKey(name: 'foreach')
  final Object array_or_page;

  final Lambda lambda;

  Foreach(this.array_or_page, this.lambda);

  factory Foreach.fromJson(Map<String, dynamic> json) =>
      _$ForeachFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ForeachToJson(this);
}

@JsonSerializable()
class Intersection extends Expr {
  @JsonKey(name: 'intersection')
  final Object group;

  Intersection(this.group);

  factory Intersection.fromJson(Map<String, dynamic> json) =>
      _$IntersectionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$IntersectionToJson(this);
}

@JsonSerializable()
class IsEmpty extends Expr {
  @JsonKey(name: 'is_empty')
  final Object arrayOrSet;

  IsEmpty(this.arrayOrSet);

  factory IsEmpty.fromJson(Map<String, dynamic> json) =>
      _$IsEmptyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$IsEmptyToJson(this);
}

@JsonSerializable()
class IsNonEmpty extends Expr {
  @JsonKey(name: 'is_non_empty')
  final Object arrayOrSet;

  IsNonEmpty(this.arrayOrSet);

  factory IsNonEmpty.fromJson(Map<String, dynamic> json) =>
      _$IsNonEmptyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$IsNonEmptyToJson(this);
}

@JsonSerializable()
class Join extends Expr {
  @JsonKey(name: 'join')
  final Object source;

  @JsonKey(name: 'with')
  final Object detail;

  Join(this.source, this.detail);

  factory Join.fromJson(Map<String, dynamic> json) => _$JoinFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$JoinToJson(this);
}

@JsonSerializable()
class Map_ extends Expr {
  @JsonKey(name: 'collection')
  final Object array;

  @JsonKey(name: 'map')
  final Lambda lambda;

  Map_(this.array, this.lambda);

  factory Map_.fromJson(Map<String, dynamic> json) => _$Map_FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$Map_ToJson(this);
}

@JsonSerializable()
class Match extends Expr {
  @JsonKey(name: 'match')
  final Object index;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final List terms;

  Match(this.index, {this.terms});

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MatchToJson(this);
}

@JsonSerializable()
class Prepend extends Expr {
  @JsonKey(name: 'prepend')
  final Object base;

  @JsonKey(name: 'collection')
  final Object elems;

  Prepend(this.base, this.elems);

  factory Prepend.fromJson(Map<String, dynamic> json) =>
      _$PrependFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PrependToJson(this);
}

@JsonSerializable()
class Singleton extends Expr {
  @JsonKey(name: 'singleton')
  final Ref ref;

  Singleton(this.ref);

  factory Singleton.fromJson(Map<String, dynamic> json) =>
      _$SingletonFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SingletonToJson(this);
}

@JsonSerializable()
class Take extends Expr {
  @JsonKey(name: 'take')
  final Object num;

  @JsonKey(name: 'collection')
  final Object array;

  Take(this.num, this.array);

  factory Take.fromJson(Map<String, dynamic> json) => _$TakeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TakeToJson(this);
}

@JsonSerializable()
class Union extends Expr {
  @JsonKey(name: 'union')
  final Object group;

  Union(this.group);

  factory Union.fromJson(Map<String, dynamic> json) => _$UnionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UnionToJson(this);
}
