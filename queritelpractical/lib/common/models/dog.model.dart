import 'package:json_annotation/json_annotation.dart';

part 'dog.model.g.dart';

@JsonSerializable(
  nullable: false,
  fieldRename: FieldRename.none,
)
class DogModel {
  String? name;
  String? photo;
  int? age;
  int? weight;
  String? description;


  DogModel({
    this.name,
    this.photo,
    this.age,
    this.weight,
    this.description,
  });

  factory DogModel.fromJson(Map<String, dynamic> json) => _$DogModelFromJson(json);
  Map<String, dynamic> toJson() => _$DogModelToJson(this);
}
