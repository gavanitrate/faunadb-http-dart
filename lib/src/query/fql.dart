import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'fql.g.dart';

abstract class Expr {
  @override
  String toString() {
    return json.encode(this).toString();
  }
}

@JsonSerializable(explicitToJson: true)
class Object_ extends Expr {
  final Map object;

  static _wrap(dynamic value) {
    if (value is Map) {
      return Object_(value);
    } else {
      return value;
    }
  }

  static Map _wrap_values(Map value) {
    return value.map(
      (key, value) => MapEntry(
        key,
        _wrap(value),
      ),
    );
  }

  Object_(this.object);

  factory Object_.from(Map object) {
    return Object_(_wrap_values(object));
  }

  factory Object_.fromJson(Map<String, dynamic> json) =>
      _$Object_FromJson(json);

  Map<String, dynamic> toJson() => _$Object_ToJson(this);
}

@JsonSerializable()
class Select extends Expr {
  @JsonKey(name: "select")
  final Object path;

  final Object_ from;

  @JsonKey(name: "default", disallowNullValue: true, includeIfNull: false)
  final Object default_;

  Select(this.path, this.from, {this.default_});

  factory Select.fromJson(Map<String, dynamic> json) => _$SelectFromJson(json);

  Map<String, dynamic> toJson() => _$SelectToJson(this);
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
  @JsonKey(name: "ref")
  final Object schema_ref;

  final String id;

  @JsonKey(name: "@ref", disallowNullValue: true, includeIfNull: false)
  final Ref fromRef;

  Ref(this.schema_ref, this.id, {this.fromRef});

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
class QueryResult extends Expr {
  @JsonKey(nullable: true, includeIfNull: false)
  final Object resource;

  @JsonKey(nullable: true, includeIfNull: false)
  final Object errors;

  QueryResult({this.resource, this.errors});

  factory QueryResult.fromBody(String body) {
    return QueryResult.fromJson(json.decode(body));
  }

  factory QueryResult.fromJson(Map<String, dynamic> json) =>
      _$QueryResultFromJson(json);

  Map<String, dynamic> toJson() => _$QueryResultToJson(this);
}
