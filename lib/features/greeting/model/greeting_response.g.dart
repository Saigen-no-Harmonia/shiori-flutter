// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'greeting_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GreetingResponseImpl _$$GreetingResponseImplFromJson(
  Map<String, dynamic> json,
) => _$GreetingResponseImpl(
  greeting: Greeting.fromJson(json['greeting'] as Map<String, dynamic>),
  photo: GreetingPhoto.fromJson(json['topPhoto'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$GreetingResponseImplToJson(
  _$GreetingResponseImpl instance,
) => <String, dynamic>{
  'greeting': instance.greeting,
  'topPhoto': instance.photo,
};
