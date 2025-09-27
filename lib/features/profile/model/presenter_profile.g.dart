// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presenter_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PresenterProfileImpl _$$PresenterProfileImplFromJson(
  Map<String, dynamic> json,
) => _$PresenterProfileImpl(
  birthDate: DateTime.parse(json['birthDate'] as String),
  birthPlace: json['birthPlace'] as String,
  firstName: json['firstName'] as String,
  firstNameKana: json['firstNameKana'] as String,
  hobby: json['hobby'] as String,
  job: json['job'] as String,
  lastName: json['lastName'] as String,
  lastNameKana: json['lastNameKana'] as String,
  likeBy: json['likeBy'] as String,
  nickName: json['nickName'] as String,
  photoURL: json['photoUrl'] as String,
  ramen: json['ramen'] as String,
);

Map<String, dynamic> _$$PresenterProfileImplToJson(
  _$PresenterProfileImpl instance,
) => <String, dynamic>{
  'birthDate': instance.birthDate.toIso8601String(),
  'birthPlace': instance.birthPlace,
  'firstName': instance.firstName,
  'firstNameKana': instance.firstNameKana,
  'hobby': instance.hobby,
  'job': instance.job,
  'lastName': instance.lastName,
  'lastNameKana': instance.lastNameKana,
  'likeBy': instance.likeBy,
  'nickName': instance.nickName,
  'photoUrl': instance.photoURL,
  'ramen': instance.ramen,
};
