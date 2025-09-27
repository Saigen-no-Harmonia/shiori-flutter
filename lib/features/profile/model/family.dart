import 'package:freezed_annotation/freezed_annotation.dart';

import 'cat_profile.dart';
import 'participant_profile.dart';
import 'presenter_profile.dart';

part 'family.freezed.dart';
part 'family.g.dart';

@freezed
class Family with _$Family {
  const factory Family({
    @JsonKey(name: 'ieId') required String id,
    @JsonKey(name: 'ieName') required String name,
    @JsonKey(name: 'presenterProfile') required PresenterProfile presenter,
    @JsonKey(name: 'participantProfiles') required List<ParticipantProfile> participants,
    @JsonKey(name: 'nekoProfiles') List<CatProfile>? cats,
  }) = _Family;

  factory Family.fromJson(Map<String, dynamic> json) =>
      _$FamilyFromJson(json);
}
