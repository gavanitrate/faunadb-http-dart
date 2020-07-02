import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';

part 'result.g.dart';

class Result {
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

  static Object unwrap_value(String key, dynamic value) {
    if (value is List) {
      return unwrap_values(value);
    } else if (value is Map<String, dynamic>) {
      return unwrap_values(value);
    } else if (value is Obj) {
      return value.object;
    } else if (key == "ts") {
      return DateTime.fromMicrosecondsSinceEpoch(value);
    } else {
      return value;
    }
  }

  static Object unwrap_values(Object data) {
    if (data == null) return null;

    if (data is List) {
      return data.map((e) => unwrap_values(e));
    } else if (data is Map<String, dynamic>) {
      return _replace(
            "@set",
            (value) => Set.from([unwrap_values(value)]),
            data,
          ) ??
          _replace(
            "@ref",
            (value) => RefResult.fromJson(value),
            data,
          ) ??
          _replace(
            "@ts",
            (value) => DateTime.parse(value),
            data,
          ) ??
          data.map((key, value) => MapEntry(key, unwrap_value(key, value)));
    }

    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class RefResult {
  final String id;

  @JsonKey(
    fromJson: _unwrapCollection,
    includeIfNull: false,
  )
  final RefResult collection;

  static _unwrapCollection(collection) {
    if (collection == null) return null;
    return Result.unwrap_values(collection);
  }

  RefResult(this.id, this.collection);

  factory RefResult.fromJson(Map<String, dynamic> json) =>
      _$RefResultFromJson(json);

  Map<String, dynamic> toJson() => _$RefResultToJson(this);

  @override
  String toString() {
    if (collection != null) {
      return "Ref(id: ${id}, collection: ${collection.toString()})";
    }
    return "Ref(id: ${id})";
  }
}

@JsonSerializable()
class QueryResult {
  @JsonKey(ignore: true)
  String raw;

  @JsonKey(
    includeIfNull: false,
    fromJson: Result.unwrap_values,
    toJson: Expr.wrap_values,
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
