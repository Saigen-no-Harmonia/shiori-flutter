import 'package:freezed_annotation/freezed_annotation.dart';

part 'access.freezed.dart';
part 'access.g.dart';

@freezed
class Access with _$Access {
  const factory Access({
    required DateTime gatheringDate,
    required String gatheringSpot,
    required String restaurantName,
    @JsonKey(name: 'restaurantUrl') required String restaurantURL,
    required DateTime startingDate,
    @JsonKey(name: 'venueAccessPageUrl') required String venueURL,
    required String venueAddress,
    required String latitude,
    required String longitude,
  }) = _Access;

  factory Access.fromJson(Map<String, dynamic> json) =>
      _$AccessFromJson(json);
}
