// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_and_date.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Date _$DateFromJson(Map<String, dynamic> json) => Date(
      json['date'] as String,
    );

Map<String, dynamic> _$DateToJson(Date instance) => <String, dynamic>{
      'date': instance.str,
    };

DayOfMonth _$DayOfMonthFromJson(Map<String, dynamic> json) => DayOfMonth(
      Expr.fromJson(json['day_of_month'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayOfMonthToJson(DayOfMonth instance) =>
    <String, dynamic>{
      'day_of_month': instance.timestamp,
    };

DayOfWeek _$DayOfWeekFromJson(Map<String, dynamic> json) => DayOfWeek(
      Expr.fromJson(json['day_of_week'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayOfWeekToJson(DayOfWeek instance) => <String, dynamic>{
      'day_of_week': instance.timestamp,
    };

DayOfYear _$DayOfYearFromJson(Map<String, dynamic> json) => DayOfYear(
      Expr.fromJson(json['day_of_year'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayOfYearToJson(DayOfYear instance) => <String, dynamic>{
      'day_of_year': instance.timestamp,
    };

Epoch _$EpochFromJson(Map<String, dynamic> json) => Epoch(
      json['epoch'] as int,
      json['unit'] as String,
    );

Map<String, dynamic> _$EpochToJson(Epoch instance) => <String, dynamic>{
      'epoch': instance.num,
      'unit': instance.unit,
    };

Hour _$HourFromJson(Map<String, dynamic> json) => Hour(
      Expr.fromJson(json['hour'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HourToJson(Hour instance) => <String, dynamic>{
      'hour': instance.timestamp,
    };

Minute _$MinuteFromJson(Map<String, dynamic> json) => Minute(
      Expr.fromJson(json['minute'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MinuteToJson(Minute instance) => <String, dynamic>{
      'minute': instance.timestamp,
    };

Month _$MonthFromJson(Map<String, dynamic> json) => Month(
      Expr.fromJson(json['month'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MonthToJson(Month instance) => <String, dynamic>{
      'month': instance.timestamp,
    };

Now _$NowFromJson(Map<String, dynamic> json) => Now()..value = json['now'];

Map<String, dynamic> _$NowToJson(Now instance) => <String, dynamic>{
      'now': instance.value,
    };

Second _$SecondFromJson(Map<String, dynamic> json) => Second(
      Expr.fromJson(json['second'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SecondToJson(Second instance) => <String, dynamic>{
      'second': instance.timestamp,
    };

Time _$TimeFromJson(Map<String, dynamic> json) => Time(
      json['time'] as String,
    );

Map<String, dynamic> _$TimeToJson(Time instance) => <String, dynamic>{
      'time': instance.str,
    };

TimeAdd _$TimeAddFromJson(Map<String, dynamic> json) => TimeAdd(
      json['time_add'] as Object,
      json['offset'] as Object,
      json['unit'] as Object,
    );

Map<String, dynamic> _$TimeAddToJson(TimeAdd instance) => <String, dynamic>{
      'time_add': instance.base,
      'offset': instance.offset,
      'unit': instance.unit,
    };

TimeDiff _$TimeDiffFromJson(Map<String, dynamic> json) => TimeDiff(
      json['time_diff'] as Object,
      json['other'] as Object,
      json['unit'] as Object,
    );

Map<String, dynamic> _$TimeDiffToJson(TimeDiff instance) => <String, dynamic>{
      'time_diff': instance.start,
      'other': instance.finish,
      'unit': instance.unit,
    };

TimeSubtract _$TimeSubtractFromJson(Map<String, dynamic> json) => TimeSubtract(
      json['time_subtract'] as Object,
      json['offset'] as Object,
      json['unit'] as Object,
    );

Map<String, dynamic> _$TimeSubtractToJson(TimeSubtract instance) =>
    <String, dynamic>{
      'time_subtract': instance.base,
      'offset': instance.offset,
      'unit': instance.unit,
    };

Year _$YearFromJson(Map<String, dynamic> json) => Year(
      Expr.fromJson(json['year'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$YearToJson(Year instance) => <String, dynamic>{
      'year': instance.timestamp,
    };
