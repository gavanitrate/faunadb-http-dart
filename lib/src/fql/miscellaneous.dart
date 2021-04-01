import 'package:json_annotation/json_annotation.dart';

import 'basic.dart';
import 'expr.dart';

part 'miscellaneous.g.dart';

@JsonSerializable()
class Abort extends Expr {
  @JsonKey(name: 'abort')
  final Object message;

  Abort(this.message);

  factory Abort.fromJson(Map<String, dynamic> json) => _$AbortFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AbortToJson(this);
}

@JsonSerializable()
class Collection extends Ref {
  @JsonKey(name: 'collection')
  final Object name;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object? database;

  Collection(this.name, {this.database}) : super.empty();

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}

@JsonSerializable()
class Collections extends Ref {
  @JsonKey(name: 'collections', includeIfNull: true)
  final Object? database;

  Collections({this.database}) : super.empty();

  factory Collections.fromJson(Map<String, dynamic> json) =>
      _$CollectionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CollectionsToJson(this);
}

@JsonSerializable()
class Database extends Ref {
  @JsonKey(name: 'database')
  final Object name;

  @JsonKey(name: 'scope', disallowNullValue: true, includeIfNull: false)
  final Expr? database;

  Database(this.name, {this.database}) : super.empty();

  factory Database.fromJson(Map<String, dynamic> json) =>
      _$DatabaseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DatabaseToJson(this);
}

@JsonSerializable()
class Databases extends Ref {
  @JsonKey(name: 'databases', includeIfNull: true)
  final Object? database;

  Databases({this.database}) : super.empty();

  factory Databases.fromJson(Map<String, dynamic> json) =>
      _$DatabasesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DatabasesToJson(this);
}

@JsonSerializable()
class Documents extends Ref {
  @JsonKey(name: 'documents')
  final Object collection;

  Documents(this.collection) : super.empty();

  factory Documents.fromJson(Map<String, dynamic> json) =>
      _$DocumentsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DocumentsToJson(this);
}

@JsonSerializable()
class Function_ extends Ref {
  @JsonKey(name: 'function')
  final String name;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Expr? database;

  Function_(this.name, {this.database}) : super.empty();

  factory Function_.fromJson(Map<String, dynamic> json) =>
      _$Function_FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$Function_ToJson(this);
}

@JsonSerializable()
class Functions extends Ref {
  @JsonKey(name: 'functions', includeIfNull: true)
  final Expr? database;

  Functions({this.database}) : super.empty();

  factory Functions.fromJson(Map<String, dynamic> json) =>
      _$FunctionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FunctionsToJson(this);
}

@JsonSerializable()
class Index extends Ref {
  @JsonKey(name: 'index')
  final Object name;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object? database;

  Index(this.name, {this.database}) : super.empty();

  factory Index.fromJson(Map<String, dynamic> json) => _$IndexFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$IndexToJson(this);
}

@JsonSerializable()
class Indexes extends Ref {
  @JsonKey(name: 'indexes', includeIfNull: true)
  final Expr? database;

  Indexes({this.database}) : super.empty();

  factory Indexes.fromJson(Map<String, dynamic> json) =>
      _$IndexesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$IndexesToJson(this);
}

@JsonSerializable(createToJson: false)
class NewId extends Expr {
  NewId();

  factory NewId.fromJson(Map<String, dynamic> json) => _$NewIdFromJson(json);

  @override
  Map<String, dynamic> toJson() => const {'new_id': null};
}

@JsonSerializable()
class Query extends Expr {
  @JsonKey(name: 'query')
  final Lambda lambda;

  Query(this.lambda);

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QueryToJson(this);
}

@JsonSerializable()
class Ref extends Expr {
  @JsonKey(name: 'ref')
  final Expr? schema_ref;

  final String? id;

  Ref(this.schema_ref, this.id);

  Ref.empty({this.schema_ref, this.id});

  factory Ref.fromJson(Map<String, dynamic> json) => _$RefFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RefToJson(this);
}

@JsonSerializable()
class Role extends Expr {
  @JsonKey(name: 'role')
  final String name;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object? database;

  Role(this.name, {this.database});

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RoleToJson(this);
}

@JsonSerializable()
class Roles extends Expr {
  @JsonKey(name: 'roles', includeIfNull: true)
  final Expr? database;

  Roles({this.database});

  factory Roles.fromJson(Map<String, dynamic> json) => _$RolesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RolesToJson(this);
}
