// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Credentials _$CredentialsFromJson(Map<String, dynamic> json) {
  return Credentials();
}

CurrentIdentity _$CurrentIdentityFromJson(Map<String, dynamic> json) {
  return CurrentIdentity();
}

CurrentToken _$CurrentTokenFromJson(Map<String, dynamic> json) {
  return CurrentToken();
}

HasCurrentToken _$HasCurrentTokenFromJson(Map<String, dynamic> json) {
  return HasCurrentToken();
}

HasIdentity _$HasIdentityFromJson(Map<String, dynamic> json) {
  return HasIdentity();
}

Identify _$IdentifyFromJson(Map<String, dynamic> json) {
  return Identify(
    Expr.fromJson(json['identity'] as Map<String, dynamic>),
    json['password'] as String,
  );
}

Map<String, dynamic> _$IdentifyToJson(Identify instance) => <String, dynamic>{
      'identity': instance.identity,
      'password': instance.password,
    };

Identity _$IdentityFromJson(Map<String, dynamic> json) {
  return Identity();
}

Keys _$KeysFromJson(Map<String, dynamic> json) {
  return Keys(
    database: json['keys'],
  );
}

Map<String, dynamic> _$KeysToJson(Keys instance) => <String, dynamic>{
      'keys': instance.database,
    };

Login _$LoginFromJson(Map<String, dynamic> json) {
  return Login(
    json['login'] as Object,
    Obj.fromJson(json['params'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'login': instance.identity,
      'params': instance.param_object,
    };

Logout _$LogoutFromJson(Map<String, dynamic> json) {
  return Logout(
    all_tokens: json['logout'] as bool?,
  );
}

Map<String, dynamic> _$LogoutToJson(Logout instance) => <String, dynamic>{
      'logout': instance.all_tokens,
    };

Tokens _$TokensFromJson(Map<String, dynamic> json) {
  return Tokens();
}
