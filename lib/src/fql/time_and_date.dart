import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';

part 'time_and_date.g.dart';

@JsonSerializable()
class Date extends Expr {
  @JsonKey(name: 'date')
  final String str;

  Date(this.str);

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DateToJson(this);
}

@JsonSerializable()
class DayOfMonth extends Expr {
  @JsonKey(name: 'day_of_month')
  final Expr timestamp;

  DayOfMonth(this.timestamp);

  factory DayOfMonth.fromJson(Map<String, dynamic> json) =>
      _$DayOfMonthFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DayOfMonthToJson(this);
}

@JsonSerializable()
class DayOfWeek extends Expr {
  @JsonKey(name: 'day_of_week')
  final Expr timestamp;

  DayOfWeek(this.timestamp);

  factory DayOfWeek.fromJson(Map<String, dynamic> json) =>
      _$DayOfWeekFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DayOfWeekToJson(this);
}

@JsonSerializable()
class DayOfYear extends Expr {
  @JsonKey(name: 'day_of_year')
  final Expr timestamp;

  DayOfYear(this.timestamp);

  factory DayOfYear.fromJson(Map<String, dynamic> json) =>
      _$DayOfYearFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DayOfYearToJson(this);
}

@JsonSerializable()
class Epoch extends Expr {
  @JsonKey(name: 'epoch')
  final int num;

  final String unit;

  Epoch(this.num, this.unit);

  factory Epoch.fromJson(Map<String, dynamic> json) => _$EpochFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EpochToJson(this);
}

@JsonSerializable()
class Hour extends Expr {
  @JsonKey(name: 'hour')
  final Expr timestamp;

  Hour(this.timestamp);

  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HourToJson(this);
}

@JsonSerializable()
class Minute extends Expr {
  @JsonKey(name: 'minute')
  final Expr timestamp;

  Minute(this.timestamp);

  factory Minute.fromJson(Map<String, dynamic> json) => _$MinuteFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MinuteToJson(this);
}

@JsonSerializable()
class Month extends Expr {
  @JsonKey(name: 'month')
  final Expr timestamp;

  Month(this.timestamp);

  factory Month.fromJson(Map<String, dynamic> json) => _$MonthFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MonthToJson(this);
}

@JsonSerializable()
class Now extends Expr {
  @JsonKey(name: 'now')
  dynamic value;

  Now() {
    value = null;
  }

  factory Now.fromJson(Map<String, dynamic> json) => _$NowFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NowToJson(this);
}

@JsonSerializable()
class Second extends Expr {
  @JsonKey(name: 'second')
  final Expr timestamp;

  Second(this.timestamp);

  factory Second.fromJson(Map<String, dynamic> json) => _$SecondFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SecondToJson(this);
}

@JsonSerializable()
class Time extends Expr {
  @JsonKey(name: 'time')
  final String str;

  Time(this.str);

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TimeToJson(this);
}

@JsonSerializable()
class TimeAdd extends Expr {
  @JsonKey(name: 'time_add')
  final Object base;

  final Object offset;

  final Object unit;

  TimeAdd(this.base, this.offset, this.unit);

  factory TimeAdd.fromJson(Map<String, dynamic> json) =>
      _$TimeAddFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TimeAddToJson(this);
}

@JsonSerializable()
class TimeDiff extends Expr {
  @JsonKey(name: 'time_diff')
  final Object start;

  @JsonKey(name: 'other')
  final Object finish;

  final Object unit;

  TimeDiff(this.start, this.finish, this.unit);

  factory TimeDiff.fromJson(Map<String, dynamic> json) =>
      _$TimeDiffFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TimeDiffToJson(this);
}

@JsonSerializable()
class TimeSubtract extends Expr {
  @JsonKey(name: 'time_subtract')
  final Object base;

  final Object offset;

  final Object unit;

  TimeSubtract(this.base, this.offset, this.unit);

  factory TimeSubtract.fromJson(Map<String, dynamic> json) =>
      _$TimeSubtractFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TimeSubtractToJson(this);
}

@JsonSerializable()
class Year extends Expr {
  @JsonKey(name: 'year')
  final Expr timestamp;

  Year(this.timestamp);

  factory Year.fromJson(Map<String, dynamic> json) => _$YearFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$YearToJson(this);
}
