import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'fql.g.dart';

abstract class Expr {
  @override
  String toString() {
    return json.encode(this).toString();
  }
}

@JsonSerializable()
class Paginate extends Expr {
  @JsonKey(name: "paginate")
  final Object input;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final int size;

  Paginate(this.input, {this.size});

  factory Paginate.fromJson(Map<String, dynamic> json) =>
      _$PaginateFromJson(json);

  Map<String, dynamic> toJson() => _$PaginateToJson(this);
}

@JsonSerializable()
class Match extends Expr {
  @JsonKey(name: "match")
  final Object index;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final List<String> terms;

  Match(this.index, {this.terms});

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  Map<String, dynamic> toJson() => _$MatchToJson(this);
}

@JsonSerializable()
class Index extends Expr {
  @JsonKey(name: "index")
  final String name;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object database;

  Index(this.name, {this.database});

  factory Index.fromJson(Map<String, dynamic> json) => _$IndexFromJson(json);

  Map<String, dynamic> toJson() => _$IndexToJson(this);
}

@JsonSerializable()
class Ref extends Expr {
  @JsonKey(name: "@ref")
  final Object schema_ref;

  final String id;

  Ref(this.schema_ref, this.id);

  factory Ref.fromJson(Map<String, dynamic> json) => _$RefFromJson(json);

  Map<String, dynamic> toJson() => _$RefToJson(this);
}

@JsonSerializable()
class Collection extends Expr {
  @JsonKey(name: "collection")
  final String name;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object database;

  Collection(this.name, {this.database});

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}
