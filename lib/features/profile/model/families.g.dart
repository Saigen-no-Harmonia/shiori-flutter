// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'families.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FamiliesImpl _$$FamiliesImplFromJson(Map<String, dynamic> json) =>
    _$FamiliesImpl(
      families: (json['families'] as List<dynamic>)
          .map((e) => Family.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FamiliesImplToJson(_$FamiliesImpl instance) =>
    <String, dynamic>{'families': instance.families};
