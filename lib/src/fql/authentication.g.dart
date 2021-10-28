// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Credentials _$CredentialsFromJson(Map<String, dynamic> json) => Credentials();

CurrentIdentity _$CurrentIdentityFromJson(Map<String, dynamic> json) =>
    CurrentIdentity();

CurrentToken _$CurrentTokenFromJson(Map<String, dynamic> json) =>
    CurrentToken();

HasCurrentToken _$HasCurrentTokenFromJson(Map<String, dynamic> json) =>
    HasCurrentToken();

HasIdentity _$HasIdentityFromJson(Map<String, dynamic> json) => HasIdentity();

Identify _$IdentifyFromJson(Map<String, dynamic> json) => Identify(
      Expr.fromJson(json['identify'] as Map<String, dynamic>),
      json['password'] as String,
    );

Map<String, dynamic> _$IdentifyToJson(Identify instance) => <String, dynamic>{
      'identify': instance.identify,
      'password': instance.password,
    };

Identity _$IdentityFromJson(Map<String, dynamic> json) => Identity();

Keys _$KeysFromJson(Map<String, dynamic> json) => Keys(
      database: json['keys'],
    );

Map<String, dynamic> _$KeysToJson(Keys instance) => <String, dynamic>{
      'keys': instance.database,
    };

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
      json['login'] as Object,
      Obj.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'login': instance.identity,
      'params': instance.param_object,
    };

Logout _$LogoutFromJson(Map<String, dynamic> json) => Logout(
      all_tokens: json['logout'] as bool?,
    );

Map<String, dynamic> _$LogoutToJson(Logout instance) => <String, dynamic>{
      'logout': instance.all_tokens,
    };

Tokens _$TokensFromJson(Map<String, dynamic> json) => Tokens();
