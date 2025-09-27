import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_profile.freezed.dart';
part 'participant_profile.g.dart';

@freezed
class ParticipantProfile with _$ParticipantProfile {
  const factory ParticipantProfile({
    required String id,
    required DateTime birthDate,
    required String birthPlace,
    required String firstName,
    required String firstNameKana,
    required String hobby,
    required String job,
    required String lastName,
    required String lastNameKana,
    required String likeFood,
    required String message,
    @JsonKey(name: 'photoUrl') required String photoURL,
    required String relation,
  }) = _ParticipantProfile;

  factory ParticipantProfile.fromJson(Map<String, dynamic> json) =>
      _$ParticipantProfileFromJson(json);
}
