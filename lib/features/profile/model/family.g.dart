// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FamilyImpl _$$FamilyImplFromJson(Map<String, dynamic> json) => _$FamilyImpl(
  id: json['ieId'] as String,
  name: json['ieName'] as String,
  presenter: PresenterProfile.fromJson(
    json['presenterProfile'] as Map<String, dynamic>,
  ),
  participants: (json['participantProfiles'] as List<dynamic>)
      .map((e) => ParticipantProfile.fromJson(e as Map<String, dynamic>))
      .toList(),
  cats: (json['nekoProfiles'] as List<dynamic>?)
      ?.map((e) => CatProfile.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$FamilyImplToJson(_$FamilyImpl instance) =>
    <String, dynamic>{
      'ieId': instance.id,
      'ieName': instance.name,
      'presenterProfile': instance.presenter,
      'participantProfiles': instance.participants,
      'nekoProfiles': instance.cats,
    };
