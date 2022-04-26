import 'package:faunadb_http/query.dart';
import 'package:json_annotation/json_annotation.dart';

part 'type_checks.g.dart';

@JsonSerializable()
class IsNull extends Expr {
  final Object value;

  IsNull(this.value);

  factory IsNull.fromJson(Map<String, dynamic> json) => _$IsNullFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$IsNullToJson(this);
}
