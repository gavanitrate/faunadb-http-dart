import 'package:json_annotation/json_annotation.dart';

import 'expr.dart';
import 'miscellaneous.dart';

part 'write.g.dart';

@JsonSerializable()
class CreateCollection extends Expr {
  @JsonKey(name: "create_collection")
  final Obj param_object;

  CreateCollection(this.param_object);

  factory CreateCollection.fromJson(Map<String, dynamic> json) =>
      _$CreateCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCollectionToJson(this);
}

@JsonSerializable()
class CreateDatabase extends Expr {
  @JsonKey(name: "create_database")
  final Obj param_object;

  CreateDatabase(this.param_object);

  factory CreateDatabase.fromJson(Map<String, dynamic> json) =>
      _$CreateDatabaseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateDatabaseToJson(this);
}

@JsonSerializable()
class CreateIndex extends Expr {
  @JsonKey(name: "create_index")
  final Obj param_object;

  CreateIndex(this.param_object);

  factory CreateIndex.fromJson(Map<String, dynamic> json) =>
      _$CreateIndexFromJson(json);

  Map<String, dynamic> toJson() => _$CreateIndexToJson(this);
}

@JsonSerializable()
class Create extends Expr {
  @JsonKey(name: "create")
  final Collection collection;

  @JsonKey(name: "params")
  final Obj param_object;

  Create(this.collection, this.param_object);

  factory Create.fromJson(Map<String, dynamic> json) => _$CreateFromJson(json);

  Map<String, dynamic> toJson() => _$CreateToJson(this);
}

@JsonSerializable()
class Delete extends Expr {
  @JsonKey(name: "delete")
  final Ref ref;

  Delete(this.ref);

  factory Delete.fromJson(Map<String, dynamic> json) => _$DeleteFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteToJson(this);
}
