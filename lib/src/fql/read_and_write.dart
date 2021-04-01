import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';
import 'miscellaneous.dart';
import 'page.dart';

part 'read_and_write.g.dart';

@JsonSerializable()
class Get extends Expr {
  @JsonKey(name: 'get')
  final Expr ref;

  @JsonKey(
    disallowNullValue: true,
    includeIfNull: false,
    toJson: Expr.wrap_value,
  )
  final DateTime? ts;

  Get(this.ref, {this.ts});

  factory Get.fromJson(Map<String, dynamic> json) => _$GetFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GetToJson(this);
}

@JsonSerializable()
class KeyFromSecret extends Expr {
  @JsonKey(name: 'key_from_secret')
  final String secret;

  KeyFromSecret(this.secret);

  factory KeyFromSecret.fromJson(Map<String, dynamic> json) =>
      _$KeyFromSecretFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$KeyFromSecretToJson(this);
}

@JsonSerializable()
class Paginate extends Expr {
  @JsonKey(name: 'paginate')
  final Expr input;

  @JsonKey(
    disallowNullValue: true,
    includeIfNull: false,
    toJson: Expr.wrap_value,
  )
  final DateTime? ts;

  @JsonKey(disallowNullValue: false, includeIfNull: true)
  final Object before;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final Object after;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final int? size;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final bool? events;

  @JsonKey(disallowNullValue: true, includeIfNull: false)
  final bool? sources;

  Paginate(
    this.input, {
    this.ts,
    this.size,
    this.before = CursorType.EMPTY,
    this.after = CursorType.EMPTY,
    this.events,
    this.sources,
  });

  factory Paginate.fromJson(Map<String, dynamic> json) =>
      _$PaginateFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = _$PaginateToJson(this);
    if (before == CursorType.EMPTY) {
      json.remove('before');
    }
    if (after == CursorType.EMPTY) {
      json.remove('after');
    }
    return json;
  }
}

@JsonSerializable()
class Select extends Expr {
  @JsonKey(name: 'select')
  final Object path;

  final Expr from;

  @JsonKey(name: 'default', disallowNullValue: true, includeIfNull: false)
  final Expr? default_;

  Select(this.path, this.from, {this.default_});

  factory Select.fromJson(Map<String, dynamic> json) => _$SelectFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SelectToJson(this);
}

@JsonSerializable()
class Create extends Expr {
  @JsonKey(name: 'create')
  final Expr collection;

  @JsonKey(name: 'params')
  final Obj param_object;

  Create(this.collection, this.param_object);

  factory Create.fromJson(Map<String, dynamic> json) => _$CreateFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateToJson(this);
}

@JsonSerializable()
class CreateCollection extends Expr {
  @JsonKey(name: 'create_collection')
  final Obj param_object;

  CreateCollection(this.param_object);

  factory CreateCollection.fromJson(Map<String, dynamic> json) =>
      _$CreateCollectionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateCollectionToJson(this);
}

@JsonSerializable()
class CreateDatabase extends Expr {
  @JsonKey(name: 'create_database')
  final Obj param_object;

  CreateDatabase(this.param_object);

  factory CreateDatabase.fromJson(Map<String, dynamic> json) =>
      _$CreateDatabaseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateDatabaseToJson(this);
}

@JsonSerializable()
class CreateFunction extends Expr {
  @JsonKey(name: 'create_function')
  final Obj param_object;

  CreateFunction(this.param_object);

  factory CreateFunction.fromJson(Map<String, dynamic> json) =>
      _$CreateFunctionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateFunctionToJson(this);
}

@JsonSerializable()
class CreateIndex extends Expr {
  @JsonKey(name: 'create_index')
  final Obj param_object;

  CreateIndex(this.param_object);

  factory CreateIndex.fromJson(Map<String, dynamic> json) =>
      _$CreateIndexFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateIndexToJson(this);
}

@JsonSerializable()
class CreateKey extends Expr {
  @JsonKey(name: 'create_key')
  final Obj param_object;

  CreateKey(this.param_object);

  factory CreateKey.fromJson(Map<String, dynamic> json) =>
      _$CreateKeyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateKeyToJson(this);
}

@JsonSerializable()
class CreateRole extends Expr {
  @JsonKey(name: 'create_role')
  final Obj param_object;

  CreateRole(this.param_object);

  factory CreateRole.fromJson(Map<String, dynamic> json) =>
      _$CreateRoleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateRoleToJson(this);
}

@JsonSerializable()
class Delete extends Expr {
  @JsonKey(name: 'delete')
  final Expr ref;

  Delete(this.ref);

  factory Delete.fromJson(Map<String, dynamic> json) => _$DeleteFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeleteToJson(this);
}

@JsonSerializable()
class Events extends Expr {
  @JsonKey(name: 'events')
  final Object input;

  Events(this.input);

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EventsToJson(this);
}

@JsonSerializable()
class Insert extends Expr {
  @JsonKey(name: 'insert')
  final Expr ref;

  final Object ts;

  final Object action;

  @JsonKey(name: 'params')
  final Obj param_object;

  Insert(this.ref, this.ts, this.action, this.param_object);

  factory Insert.fromJson(Map<String, dynamic> json) => _$InsertFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InsertToJson(this);
}

@JsonSerializable()
class Merge extends Expr {
  @JsonKey(name: 'merge')
  final Object object1;

  @JsonKey(name: 'with')
  final Object object2;

  @JsonKey(name: 'lambda', disallowNullValue: true, includeIfNull: false)
  final Object? customResolver;

  Merge(this.object1, this.object2, {this.customResolver});

  factory Merge.fromJson(Map<String, dynamic> json) => _$MergeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MergeToJson(this);
}

@JsonSerializable()
class Remove extends Expr {
  @JsonKey(name: 'remove')
  final Expr ref;

  final Object ts;

  final Object action;

  Remove(this.ref, this.ts, this.action);

  factory Remove.fromJson(Map<String, dynamic> json) => _$RemoveFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RemoveToJson(this);
}

@JsonSerializable()
class Replace extends Expr {
  @JsonKey(name: 'replace')
  final Expr ref;

  @JsonKey(name: 'params')
  final Obj param_object;

  Replace(this.ref, this.param_object);

  factory Replace.fromJson(Map<String, dynamic> json) =>
      _$ReplaceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ReplaceToJson(this);
}

@JsonSerializable()
class Update extends Expr {
  @JsonKey(name: 'update')
  final Expr ref;

  @JsonKey(name: 'params')
  final Obj param_object;

  Update(this.ref, this.param_object);

  factory Update.fromJson(Map<String, dynamic> json) => _$UpdateFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UpdateToJson(this);
}
