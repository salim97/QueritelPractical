// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatModel _$CatModelFromJson(Map<String, dynamic> json) {
  return CatModel(
    name: json['name'] as String?,
    photo: json['photo'] as String?,
    age: json['age'] as int?,
    weight: json['weight'] as int?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$CatModelToJson(CatModel instance) => <String, dynamic>{
      'name': instance.name,
      'photo': instance.photo,
      'age': instance.age,
      'weight': instance.weight,
      'description': instance.description,
    };
