import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';
import 'time_and_date.dart';

part 'basic.g.dart';

@JsonSerializable()
class At extends Expr {
  @JsonKey(name: "at")
  final Time timestamp;

  @JsonKey(name: "expr")
  final Expr expression;

  At(this.timestamp, this.expression);

  factory At.fromJson(Map<String, dynamic> json) => _$AtFromJson(json);

  Map<String, dynamic> toJson() => _$AtToJson(this);
}

@JsonSerializable()
class Call extends Expr {
  @JsonKey(name: "call")
  final Object function;

  final Object arguments;

  Call(this.function, this.arguments);

  factory Call.fromJson(Map<String, dynamic> json) => _$CallFromJson(json);

  Map<String, dynamic> toJson() => _$CallToJson(this);
}

@JsonSerializable()
class Do extends Expr {
  @JsonKey(name: "do")
  final List<Expr> expression;

  Do(this.expression);

  factory Do.fromJson(Map<String, dynamic> json) => _$DoFromJson(json);

  Map<String, dynamic> toJson() => _$DoToJson(this);
}

@JsonSerializable()
class If extends Expr {
  @JsonKey(name: "if")
  final Object cond;

  @JsonKey(name: "then")
  final Object true_expr;

  @JsonKey(name: "else")
  final Object false_expr;

  If(this.cond, this.true_expr, this.false_expr);

  factory If.fromJson(Map<String, dynamic> json) => _$IfFromJson(json);

  Map<String, dynamic> toJson() => _$IfToJson(this);
}

@JsonSerializable()
class Lambda extends Expr {
  @JsonKey(name: "lambda")
  final Object params;

  final Expr expression;

  Lambda(this.params, this.expression);

  factory Lambda.fromJson(Map<String, dynamic> json) => _$LambdaFromJson(json);

  Map<String, dynamic> toJson() => _$LambdaToJson(this);
}

@JsonSerializable()
class Let extends Expr {
  @JsonKey(name: "let")
  final Map<String, dynamic> bindings;

  @JsonKey(name: "in")
  final Expr in_;

  Let(this.bindings, this.in_);

  factory Let.fromJson(Map<String, dynamic> json) => _$LetFromJson(json);

  Map<String, dynamic> toJson() => _$LetToJson(this);
}

@JsonSerializable()
class Var extends Expr {
  @JsonKey(name: "var")
  final String name;

  Var(this.name);

  factory Var.fromJson(Map<String, dynamic> json) => _$VarFromJson(json);

  Map<String, dynamic> toJson() => _$VarToJson(this);
}
