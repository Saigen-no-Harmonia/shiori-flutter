// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParticipantProfileImpl _$$ParticipantProfileImplFromJson(
  Map<String, dynamic> json,
) => _$ParticipantProfileImpl(
  id: json['id'] as String,
  birthDate: DateTime.parse(json['birthDate'] as String),
  birthPlace: json['birthPlace'] as String,
  firstName: json['firstName'] as String,
  firstNameKana: json['firstNameKana'] as String,
  hobby: json['hobby'] as String,
  job: json['job'] as String,
  lastName: json['lastName'] as String,
  lastNameKana: json['lastNameKana'] as String,
  likeFood: json['likeFood'] as String,
  message: json['message'] as String,
  photoURL: json['photoUrl'] as String,
  relation: json['relation'] as String,
);

Map<String, dynamic> _$$ParticipantProfileImplToJson(
  _$ParticipantProfileImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'birthDate': instance.birthDate.toIso8601String(),
  'birthPlace': instance.birthPlace,
  'firstName': instance.firstName,
  'firstNameKana': instance.firstNameKana,
  'hobby': instance.hobby,
  'job': instance.job,
  'lastName': instance.lastName,
  'lastNameKana': instance.lastNameKana,
  'likeFood': instance.likeFood,
  'message': instance.message,
  'photoUrl': instance.photoURL,
  'relation': instance.relation,
};
