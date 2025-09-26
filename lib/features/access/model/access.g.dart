// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccessImpl _$$AccessImplFromJson(Map<String, dynamic> json) => _$AccessImpl(
  gatheringDate: DateTime.parse(json['gatheringDate'] as String),
  gatheringSpot: json['gatheringSpot'] as String,
  restaurantName: json['restaurantName'] as String,
  restaurantURL: json['restaurantUrl'] as String,
  startingDate: DateTime.parse(json['startingDate'] as String),
  venueURL: json['venueAccessPageUrl'] as String,
  venueAddress: json['venueAddress'] as String,
  latitude: json['latitude'] as String,
  longitude: json['longitude'] as String,
);

Map<String, dynamic> _$$AccessImplToJson(_$AccessImpl instance) =>
    <String, dynamic>{
      'gatheringDate': instance.gatheringDate.toIso8601String(),
      'gatheringSpot': instance.gatheringSpot,
      'restaurantName': instance.restaurantName,
      'restaurantUrl': instance.restaurantURL,
      'startingDate': instance.startingDate.toIso8601String(),
      'venueAccessPageUrl': instance.venueURL,
      'venueAddress': instance.venueAddress,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
