import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';
import 'miscellaneous.dart';
import 'page.dart';

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
    } else if (key == 'ts') {
      return DateTime.fromMicrosecondsSinceEpoch(value);
    } else {
      return value;
    }
  }

  static Object unwrap_values(Object data) {
    if (data == null) return null;

    if (data is List) {
      return List.generate(
        data.length,
        (e) => unwrap_value(null, data[e]),
        growable: false,
      );
    } else if (data is Map<String, dynamic>) {
      return _replace(
            'object',
            (_) => Obj.fromJson(data),
            data,
          ) ??
          _replace(
            '@set',
            (value) => {unwrap_values(value)},
            data,
          ) ??
          _replace(
            '@query',
            (value) => QueryResult.fromJson(value),
            data,
          ) ??
          _replace(
            '@ref',
            (value) => RefResult.fromJson(value),
            data,
          ) ??
          _replace(
            '@ts',
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

  static RefResult _unwrapCollection(collection) {
    if (collection == null) return null;
    return Result.unwrap_values(collection);
  }

  RefResult(this.id, this.collection);

  Ref asRef() {
    return Ref(Collection(collection.id), id);
  }

  factory RefResult.fromJson(Map<String, dynamic> json) =>
      _$RefResultFromJson(json);

  Map<String, dynamic> toJson() => _$RefResultToJson(this);

  @override
  String toString() {
    if (collection != null) {
      return 'Ref(id: ${id}, collection: ${collection.toString()})';
    }
    return 'Ref(id: ${id})';
  }
}

@JsonSerializable()
class QueryResult {
  @JsonKey(name: 'lambda')
  final Object params;

  @JsonKey(name: 'expr', fromJson: Result.unwrap_values)
  final Object expression;

  QueryResult(this.params, this.expression);

  factory QueryResult.fromJson(Map<String, dynamic> json) =>
      _$QueryResultFromJson(json);

  Map<String, dynamic> toJson() => _$QueryResultToJson(this);

  @override
  String toString() {
    return 'Query(lambda: ${params}), expr: ${expression}';
  }
}

@JsonSerializable()
class FaunaResponse {
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

  FaunaResponse({this.resource, this.errors});

  /// Convenience method to convert result to a Dart Map
  Map<String, dynamic> asMap() {
    return json.decode(raw) as Map<String, dynamic>;
  }

  /// Convenience method to build a Page object
  /// from query result.
  ///
  /// Useful when performing a [Paginate] query.
  Page asPage() {
    final result = resource as Map;
    final before = result['before'];
    final after = result['after'];
    final data = result['data'];

    return Page.fromResource(
      before: before,
      after: after,
      data: data,
    );
  }

  factory FaunaResponse.fromBody(String responseBody) {
    final qr = FaunaResponse.fromJson(json.decode(responseBody));
    qr.raw = responseBody;
    return qr;
  }

  factory FaunaResponse.fromJson(Map<String, dynamic> json) =>
      _$FaunaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FaunaResponseToJson(this);
}
