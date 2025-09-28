import 'package:freezed_annotation/freezed_annotation.dart';

import 'gallery_photo.dart';

part 'gallery_photos.freezed.dart';
part 'gallery_photos.g.dart';

@freezed
class GalleryPhotos with _$GalleryPhotos {
  const factory GalleryPhotos({
    required List<GalleryPhoto> galleryPhotos,
  }) = _GalleryPhotos;

  factory GalleryPhotos.fromJson(Map<String, dynamic> json) =>
      _$GalleryPhotosFromJson(json);
}
