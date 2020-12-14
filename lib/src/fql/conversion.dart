import 'package:faunadb_http/query.dart';
import 'package:json_annotation/json_annotation.dart';

part 'conversion.g.dart';

@JsonSerializable()
class ToArray extends Expr {
  @JsonKey(name: 'to_array')
  final Object object;

  ToArray(this.object);

  factory ToArray.fromJson(Map<String, dynamic> json) =>
      _$ToArrayFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ToArrayToJson(this);
}

@JsonSerializable()
class ToDate extends Expr {
  @JsonKey(name: 'to_date')
  final Object value;

  ToDate(this.value);

  factory ToDate.fromJson(Map<String, dynamic> json) => _$ToDateFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ToDateToJson(this);
}

@JsonSerializable()
class ToDouble extends Expr {
  @JsonKey(name: 'to_double')
  final Object value;

  ToDouble(this.value);

  factory ToDouble.fromJson(Map<String, dynamic> json) =>
      _$ToDoubleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ToDoubleToJson(this);
}

@JsonSerializable()
class ToInteger extends Expr {
  @JsonKey(name: 'to_integer')
  final Object value;

  ToInteger(this.value);

  factory ToInteger.fromJson(Map<String, dynamic> json) =>
      _$ToIntegerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ToIntegerToJson(this);
}

@JsonSerializable()
class ToMicros extends Expr {
  @JsonKey(name: 'to_micros')
  final Object value;

  ToMicros(this.value);

  factory ToMicros.fromJson(Map<String, dynamic> json) =>
      _$ToMicrosFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ToMicrosToJson(this);
}

@JsonSerializable()
class ToMillis extends Expr {
  @JsonKey(name: 'to_millis')
  final Object value;

  ToMillis(this.value);

  factory ToMillis.fromJson(Map<String, dynamic> json) =>
      _$ToMillisFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ToMillisToJson(this);
}

@JsonSerializable()
class ToNumber extends Expr {
  @JsonKey(name: 'to_number')
  final Object value;

  ToNumber(this.value);

  factory ToNumber.fromJson(Map<String, dynamic> json) =>
      _$ToNumberFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ToNumberToJson(this);
}

@JsonSerializable()
class ToObject extends Expr {
  @JsonKey(name: 'to_object')
  final Object array;

  ToObject(this.array);

  factory ToObject.fromJson(Map<String, dynamic> json) =>
      _$ToObjectFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ToObjectToJson(this);
}

@JsonSerializable()
class ToSeconds extends Expr {
  @JsonKey(name: 'to_seconds')
  final Object value;

  ToSeconds(this.value);

  factory ToSeconds.fromJson(Map<String, dynamic> json) =>
      _$ToSecondsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ToSecondsToJson(this);
}

@JsonSerializable()
class ToString extends Expr {
  @JsonKey(name: 'to_string')
  final Object value;

  ToString(this.value);

  factory ToString.fromJson(Map<String, dynamic> json) =>
      _$ToStringFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ToStringToJson(this);
}

@JsonSerializable()
class ToTime extends Expr {
  @JsonKey(name: 'to_time')
  final Object value;

  ToTime(this.value);

  factory ToTime.fromJson(Map<String, dynamic> json) => _$ToTimeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ToTimeToJson(this);
}
