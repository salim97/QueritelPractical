// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DogModel _$DogModelFromJson(Map<String, dynamic> json) {
  return DogModel(
    name: json['name'] as String?,
    photo: json['photo'] as String?,
    age: json['age'] as int?,
    weight: json['weight'] as int?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$DogModelToJson(DogModel instance) => <String, dynamic>{
      'name': instance.name,
      'photo': instance.photo,
      'age': instance.age,
      'weight': instance.weight,
      'description': instance.description,
    };
