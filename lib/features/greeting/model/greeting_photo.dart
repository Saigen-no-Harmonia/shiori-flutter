import 'package:freezed_annotation/freezed_annotation.dart';

part 'greeting_photo.freezed.dart';
part 'greeting_photo.g.dart';

@freezed
class GreetingPhoto with _$GreetingPhoto {
  const factory GreetingPhoto({
    @JsonKey(name: 'photoUrl') required String url,
  }) = _GreetingPhoto;

  factory GreetingPhoto.fromJson(Map<String, dynamic> json) =>
      _$GreetingPhotoFromJson(json);
}
