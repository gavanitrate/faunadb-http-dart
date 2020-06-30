import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';
import 'miscellaneous.dart';

part 'read.g.dart';

@JsonSerializable()
class Select extends Expr {
  @JsonKey(name: "select")
  final Object path;

  final Expr from;

  @JsonKey(name: "default", disallowNullValue: true, includeIfNull: false)
  final Object default_;

  Select(this.path, this.from, {this.default_});

  factory Select.fromJson(Map<String, dynamic> json) => _$SelectFromJson(json);

  Map<String, dynamic> toJson() => _$SelectToJson(this);
}

@JsonSerializable()
class Paginate extends Expr {
  @JsonKey(name: "paginate")
  final Expr input;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final int size;

  Paginate(this.input, {this.size});

  factory Paginate.fromJson(Map<String, dynamic> json) =>
      _$PaginateFromJson(json);

  Map<String, dynamic> toJson() => _$PaginateToJson(this);
}

@JsonSerializable()
class Get extends Expr {
  @JsonKey(name: "get")
  final Ref ref;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final DateTime ts;

  Get(this.ref, {this.ts});

  factory Get.fromJson(Map<String, dynamic> json) => _$GetFromJson(json);

  Map<String, dynamic> toJson() => _$GetToJson(this);
}

@JsonSerializable()
class KeyFromSecret extends Expr {
  @JsonKey(name: "key_from_secret")
  final String secret;

  KeyFromSecret(this.secret);

  factory KeyFromSecret.fromJson(Map<String, dynamic> json) =>
      _$KeyFromSecretFromJson(json);

  Map<String, dynamic> toJson() => _$KeyFromSecretToJson(this);
}
