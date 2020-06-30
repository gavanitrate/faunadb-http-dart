// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCollection _$CreateCollectionFromJson(Map<String, dynamic> json) {
  return CreateCollection(
    json['create_collection'] == null
        ? null
        : Obj.fromJson(json['create_collection'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateCollectionToJson(CreateCollection instance) =>
    <String, dynamic>{
      'create_collection': instance.param_object,
    };

CreateDatabase _$CreateDatabaseFromJson(Map<String, dynamic> json) {
  return CreateDatabase(
    json['create_database'] == null
        ? null
        : Obj.fromJson(json['create_database'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateDatabaseToJson(CreateDatabase instance) =>
    <String, dynamic>{
      'create_database': instance.param_object,
    };

CreateIndex _$CreateIndexFromJson(Map<String, dynamic> json) {
  return CreateIndex(
    json['create_index'] == null
        ? null
        : Obj.fromJson(json['create_index'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateIndexToJson(CreateIndex instance) =>
    <String, dynamic>{
      'create_index': instance.param_object,
    };

Create _$CreateFromJson(Map<String, dynamic> json) {
  return Create(
    json['create'] == null
        ? null
        : Collection.fromJson(json['create'] as Map<String, dynamic>),
    json['params'] == null
        ? null
        : Obj.fromJson(json['params'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateToJson(Create instance) => <String, dynamic>{
      'create': instance.collection,
      'params': instance.param_object,
    };

Delete _$DeleteFromJson(Map<String, dynamic> json) {
  return Delete(
    json['delete'] == null
        ? null
        : Ref.fromJson(json['delete'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeleteToJson(Delete instance) => <String, dynamic>{
      'delete': instance.ref,
    };
