import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';

part 'miscellaneous.g.dart';

@JsonSerializable()
class Ref extends Expr {
  @JsonKey(name: "ref")
  final Expr schema_ref;

  final String id;

  Ref(this.schema_ref, this.id);

  Ref.empty({this.schema_ref, this.id});

  factory Ref.fromJson(Map<String, dynamic> json) => _$RefFromJson(json);

  Map<String, dynamic> toJson() => _$RefToJson(this);
}

@JsonSerializable()
class Index extends Ref {
  @JsonKey(name: "index")
  final String name;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object database;

  Index(this.name, {this.database}) : super.empty();

  factory Index.fromJson(Map<String, dynamic> json) => _$IndexFromJson(json);

  Map<String, dynamic> toJson() => _$IndexToJson(this);
}

@JsonSerializable()
class Collection extends Ref {
  @JsonKey(name: "collection")
  final String name;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object database;

  Collection(this.name, {this.database}) : super.empty();

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}

@JsonSerializable()
class Database extends Ref {
  @JsonKey(name: "database")
  final String name;

  Database(this.name) : super.empty();

  factory Database.fromJson(Map<String, dynamic> json) =>
      _$DatabaseFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseToJson(this);
}

@JsonSerializable()
class Collections extends Expr {
  @JsonKey(name: "collections", includeIfNull: true)
  final Object database;

  Collections({this.database});

  factory Collections.fromJson(Map<String, dynamic> json) =>
      _$CollectionsFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionsToJson(this);
}

@JsonSerializable()
class Documents extends Expr {
  @JsonKey(name: "documents")
  final Collection collection;

  Documents(this.collection);

  factory Documents.fromJson(Map<String, dynamic> json) =>
      _$DocumentsFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentsToJson(this);
}
