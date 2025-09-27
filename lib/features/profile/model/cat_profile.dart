import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_profile.freezed.dart';
part 'cat_profile.g.dart';

@freezed
class CatProfile with _$CatProfile {
  const factory CatProfile({
    required String id,
    required int age,
    required String likeFood,
    required String name,
    @JsonKey(name: 'photoUrl') required String photoURL,
    required String temperament,
  }) = _CatProfile;

  factory CatProfile.fromJson(Map<String, dynamic> json) =>
      _$CatProfileFromJson(json);
}
