import 'package:json_annotation/json_annotation.dart';

part 'cat.model.g.dart';

@JsonSerializable(
  nullable: false,
  fieldRename: FieldRename.none,
)
class CatModel {
  String? name;
  String? photo;
  int? age;
  int? weight;
  String? description;


  CatModel({
    this.name,
    this.photo,
    this.age,
    this.weight,
    this.description,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) => _$CatModelFromJson(json);
  Map<String, dynamic> toJson() => _$CatModelToJson(this);
}
