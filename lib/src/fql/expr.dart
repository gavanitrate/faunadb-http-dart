import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'expr.g.dart';

/// Base class to represent an FQL Expression.
///
/// Native Dart types are preferred over expressions such as Value.
///
/// Varargs -> arrays
///
/// reserved keywords - add trailing _
/// Function -> [Function_]
/// default -> [default_]
@JsonSerializable()
class Expr {
  static _wrap_value(dynamic value) {
    if (value is List) {
      return _wrap_values(value);
    } else if (value is Map<String, dynamic>) {
      return Obj(value);
    } else if (value is DateTime) {
      return value.toIso8601String();
    } else {
      return value;
    }
  }

  static Object _wrap_values(Object data) {
    if (data == null) return null;

    if (data is List) {
      return data.map((e) => _wrap_value(e)).toList(growable: false);
    } else if (data is Map<String, dynamic>) {
      return data.map(
        (key, value) => MapEntry(key, _wrap_value(value)),
      );
    }

    return data;
  }

  static Object _replace(
    String key,
    Function constructor,
    Map<String, dynamic> data,
  ) {
    if (data[key] != null && data.length == 1) {
      return constructor(data[key]);
    }
    return null;
  }

  static Object _unwrap_value(String key, dynamic value) {
    if (value is List) {
      return _unwrap_values(value);
    } else if (value is Map<String, dynamic>) {
      return _unwrap_values(value);
    } else if (value is Obj) {
      return value.object;
    } else if (key == "ts") {
      return DateTime.fromMicrosecondsSinceEpoch(value);
    } else {
      return value;
    }
  }

  static Object _unwrap_values(Object data) {
    if (data == null) return null;

    if (data is List) {
      return data.map((e) => _unwrap_values(e));
    } else if (data is Map<String, dynamic>) {
      return _replace(
              "@set", (value) => Set.from([_unwrap_values(value)]), data) ??
          _replace("@ref", (value) => RefResponse.fromJson(value), data) ??
          _replace("@ts", (value) => DateTime.parse(value), data) ??
          data.map((key, value) => MapEntry(key, _unwrap_value(key, value)));
    }

    return data;
  }

  Expr();

  factory Expr.fromJson(Map<String, dynamic> json) => _$ExprFromJson(json);

  Map<String, dynamic> toJson() => _$ExprToJson(this);

  @override
  String toString() {
    return json.encode(this).toString();
  }
}

@JsonSerializable(explicitToJson: true)
class Obj extends Expr {
  @JsonKey(
    required: true,
    toJson: Expr._wrap_values,
    fromJson: Expr._unwrap_values,
  )
  final Map<String, dynamic> object;

  Obj(this.object);

  factory Obj.fromJson(Map<String, dynamic> json) => _$ObjFromJson(json);

  Map<String, dynamic> toJson() => _$ObjToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RefResponse extends Expr {
  final String id;

  @JsonKey(
    fromJson: _unwrapCollection,
    includeIfNull: false,
  )
  final RefResponse collection;

  static _unwrapCollection(collection) {
    if (collection == null) return null;
    return Expr._unwrap_values(collection);
  }

  RefResponse(this.id, this.collection);

  factory RefResponse.fromJson(Map<String, dynamic> json) =>
      _$RefResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RefResponseToJson(this);

  @override
  String toString() {
    if (collection != null) {
      return "Ref(id: ${id}, collection: ${collection.toString()})";
    }
    return "Ref(id: ${id})";
  }
}

@JsonSerializable()
class QueryResult extends Expr {
  @JsonKey(ignore: true)
  String raw;

  @JsonKey(
    includeIfNull: false,
    fromJson: Expr._unwrap_values,
    toJson: Expr._wrap_values,
  )
  final Object resource;

  @JsonKey(nullable: true, includeIfNull: false)
  final List<Map<String, dynamic>> errors;

  bool get hasErrors => (errors != null);

  QueryResult({this.resource, this.errors});

  factory QueryResult.fromBody(String responseBody) {
    final qr = QueryResult.fromJson(json.decode(responseBody));
    qr.raw = responseBody;
    return qr;
  }

  factory QueryResult.fromJson(Map<String, dynamic> json) =>
      _$QueryResultFromJson(json);

  Map<String, dynamic> toJson() => _$QueryResultToJson(this);
}
