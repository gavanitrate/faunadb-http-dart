import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';
import 'miscellaneous.dart';

part 'authentication.g.dart';

@JsonSerializable(createToJson: false)
class HasIdentity extends Expr {
  HasIdentity();

  factory HasIdentity.fromJson(Map<String, dynamic> json) => _$HasIdentityFromJson(json);

  @override
  Map<String, dynamic> toJson() => const {'has_identity': null};
}

@JsonSerializable()
class Identify extends Expr {
  final Ref identity;

  final String password;

  Identify(this.identity, this.password);

  factory Identify.fromJson(Map<String, dynamic> json) => _$IdentifyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$IdentifyToJson(this);
}

@JsonSerializable(createToJson: false)
class Identity extends Expr {
  Identity();

  factory Identity.fromJson(Map<String, dynamic> json) => _$IdentityFromJson(json);

  @override
  Map<String, dynamic> toJson() => const {'identity': null};
}

@JsonSerializable()
class Keys extends Expr {
  @JsonKey(name: 'keys', includeIfNull: true)
  final Object database;

  Keys({this.database});

  factory Keys.fromJson(Map<String, dynamic> json) => _$KeysFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$KeysToJson(this);
}

@JsonSerializable()
class Login extends Expr {
  @JsonKey(name: 'login')
  final Object identity;

  @JsonKey(name: 'params')
  final Obj param_object;

  Login(this.identity, this.param_object);

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LoginToJson(this);
}

@JsonSerializable()
class Logout extends Expr {
  @JsonKey(name: 'logout', includeIfNull: true)
  final bool all_tokens;

  Logout({this.all_tokens});

  factory Logout.fromJson(Map<String, dynamic> json) => _$LogoutFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LogoutToJson(this);
}

@JsonSerializable(createToJson: false)
class Tokens extends Expr {
  Tokens();

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);

  @override
  Map<String, dynamic> toJson() => const {'tokens': null};
}
