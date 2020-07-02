import 'dart:convert';

import 'package:faunadb_http/src/fql/result.dart';
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
  static wrap_value(dynamic value) {
    if (value is List) {
      return wrap_values(value);
    } else if (value is Map<String, dynamic>) {
      return Obj(value);
    } else if (value is DateTime) {
      return value.toIso8601String();
    } else {
      return value;
    }
  }

  static Object wrap_values(Object data) {
    if (data == null) return null;

    if (data is List) {
      return data.map((e) => wrap_value(e)).toList(growable: false);
    } else if (data is Map<String, dynamic>) {
      return data.map(
        (key, value) => MapEntry(key, wrap_value(value)),
      );
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
    fromJson: Result.unwrap_values,
    toJson: Expr.wrap_values,
  )
  final Map<String, dynamic> object;

  Obj(this.object);

  factory Obj.fromJson(Map<String, dynamic> json) => _$ObjFromJson(json);

  Map<String, dynamic> toJson() => _$ObjToJson(this);
}
