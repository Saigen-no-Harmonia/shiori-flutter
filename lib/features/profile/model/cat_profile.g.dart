// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatProfileImpl _$$CatProfileImplFromJson(Map<String, dynamic> json) =>
    _$CatProfileImpl(
      id: json['id'] as String,
      age: (json['age'] as num).toInt(),
      likeFood: json['likeFood'] as String,
      name: json['name'] as String,
      photoURL: json['photoUrl'] as String,
      temperament: json['temperament'] as String,
    );

Map<String, dynamic> _$$CatProfileImplToJson(_$CatProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'age': instance.age,
      'likeFood': instance.likeFood,
      'name': instance.name,
      'photoUrl': instance.photoURL,
      'temperament': instance.temperament,
    };
