import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';

part 'string.g.dart';

@JsonSerializable()
class Casefold extends Expr {
  @JsonKey(name: 'casefold')
  final Object value;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final String? normalizer;

  Casefold(this.value, {this.normalizer});

  factory Casefold.fromJson(Map<String, dynamic> json) =>
      _$CasefoldFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CasefoldToJson(this);
}

@JsonSerializable()
class Concat extends Expr {
  @JsonKey(name: 'concat')
  final Object value;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final String? seperator;

  Concat(this.value, {this.seperator});

  factory Concat.fromJson(Map<String, dynamic> json) => _$ConcatFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConcatToJson(this);
}

@JsonSerializable()
class FindStr extends Expr {
  @JsonKey(name: 'findstr')
  final Object value;

  final Object find;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object? start;

  FindStr(this.value, this.find, {this.start});

  factory FindStr.fromJson(Map<String, dynamic> json) =>
      _$FindStrFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FindStrToJson(this);
}

@JsonSerializable()
class FindStrRegex extends Expr {
  @JsonKey(name: 'findstrregex')
  final Object value;

  @JsonKey(name: 'pattern')
  final Object find;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object? start;

  @JsonKey(name: 'num_results', disallowNullValue: true, includeIfNull: false)
  final Object? max_results;

  FindStrRegex(this.value, this.find, {this.start, this.max_results});

  factory FindStrRegex.fromJson(Map<String, dynamic> json) =>
      _$FindStrRegexFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FindStrRegexToJson(this);
}

@JsonSerializable()
class LTrim extends Expr {
  @JsonKey(name: 'ltrim')
  final Object value;

  LTrim(this.value);

  factory LTrim.fromJson(Map<String, dynamic> json) => _$LTrimFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LTrimToJson(this);
}

@JsonSerializable()
class Length extends Expr {
  @JsonKey(name: 'length')
  final Object value;

  Length(this.value);

  factory Length.fromJson(Map<String, dynamic> json) => _$LengthFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LengthToJson(this);
}

@JsonSerializable()
class LowerCase extends Expr {
  @JsonKey(name: 'lowercase')
  final Object value;

  LowerCase(this.value);

  factory LowerCase.fromJson(Map<String, dynamic> json) =>
      _$LowerCaseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LowerCaseToJson(this);
}

/*
* NOT YET OFFICIALLY SUPPORTED BY THE FAUNA TEAM
* https://docs.fauna.com/fauna/current/tutorials/basics/indexes.html#any_letter
* */
@JsonSerializable()
class NGram extends Expr {
  @JsonKey(name: 'ngram')
  final Object input;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object? min;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object? max;

  NGram(this.input, {this.min, this.max});

  factory NGram.fromJson(Map<String, dynamic> json) => _$NGramFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NGramToJson(this);
}

@JsonSerializable()
class RTrim extends Expr {
  @JsonKey(name: 'rtrim')
  final Object value;

  RTrim(this.value);

  factory RTrim.fromJson(Map<String, dynamic> json) => _$RTrimFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RTrimToJson(this);
}

@JsonSerializable()
class Repeat extends Expr {
  @JsonKey(name: 'repeat')
  final Object value;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object? number;

  Repeat(this.value, {this.number});

  factory Repeat.fromJson(Map<String, dynamic> json) => _$RepeatFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RepeatToJson(this);
}

@JsonSerializable()
class ReplaceStr extends Expr {
  @JsonKey(name: 'replacestr')
  final Object value;

  final Object find;

  final Object replace;

  ReplaceStr(this.value, this.find, this.replace);

  factory ReplaceStr.fromJson(Map<String, dynamic> json) =>
      _$ReplaceStrFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ReplaceStrToJson(this);
}

@JsonSerializable()
class ReplaceStrRegex extends Expr {
  @JsonKey(name: 'replacestrregex')
  final Object value;

  final Object pattern;

  final Object replace;

  @JsonKey(name: 'first', disallowNullValue: true, includeIfNull: false)
  final Object? first_only;

  ReplaceStrRegex(this.value, this.pattern, this.replace, {this.first_only});

  factory ReplaceStrRegex.fromJson(Map<String, dynamic> json) =>
      _$ReplaceStrRegexFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ReplaceStrRegexToJson(this);
}

@JsonSerializable()
class Space extends Expr {
  @JsonKey(name: 'space')
  final Object count;

  Space(this.count);

  factory Space.fromJson(Map<String, dynamic> json) => _$SpaceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SpaceToJson(this);
}

@JsonSerializable()
class SubString extends Expr {
  @JsonKey(name: 'substring')
  final Object value;

  final Object start;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object? length;

  SubString(this.value, this.start, {this.length});

  factory SubString.fromJson(Map<String, dynamic> json) =>
      _$SubStringFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubStringToJson(this);
}

@JsonSerializable()
class TitleCase extends Expr {
  @JsonKey(name: 'titlecase')
  final Object value;

  TitleCase(this.value);

  factory TitleCase.fromJson(Map<String, dynamic> json) =>
      _$TitleCaseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TitleCaseToJson(this);
}

@JsonSerializable()
class Trim extends Expr {
  @JsonKey(name: 'trim')
  final Object value;

  Trim(this.value);

  factory Trim.fromJson(Map<String, dynamic> json) => _$TrimFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TrimToJson(this);
}

@JsonSerializable()
class UpperCase extends Expr {
  @JsonKey(name: 'uppercase')
  final Object value;

  UpperCase(this.value);

  factory UpperCase.fromJson(Map<String, dynamic> json) =>
      _$UpperCaseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UpperCaseToJson(this);
}
