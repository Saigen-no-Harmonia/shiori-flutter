import 'package:freezed_annotation/freezed_annotation.dart';

part 'presenter_profile.freezed.dart';
part 'presenter_profile.g.dart';

@freezed
class PresenterProfile with _$PresenterProfile {
  const factory PresenterProfile({
    required DateTime birthDate,
    required String birthPlace,
    required String firstName,
    required String firstNameKana,
    required String hobby,
    required String job,
    required String lastName,
    required String lastNameKana,
    required String likeBy,
    required String nickName,
    @JsonKey(name: 'photoUrl') required String photoURL,
    required String ramen,
  }) = _PresenterProfile;

  factory PresenterProfile.fromJson(Map<String, dynamic> json) =>
      _$PresenterProfileFromJson(json);
}
