import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_photo.freezed.dart';
part 'gallery_photo.g.dart';

@freezed
class GalleryPhoto with _$GalleryPhoto {
  const factory GalleryPhoto({
    required String id,
    @JsonKey(name: 'photoUrl') required String url,
  }) = _GalleryPhoto;

  factory GalleryPhoto.fromJson(Map<String, dynamic> json) =>
      _$GalleryPhotoFromJson(json);
}
