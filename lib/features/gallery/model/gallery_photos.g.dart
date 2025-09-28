// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_photos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GalleryPhotosImpl _$$GalleryPhotosImplFromJson(Map<String, dynamic> json) =>
    _$GalleryPhotosImpl(
      galleryPhotos: (json['galleryPhotos'] as List<dynamic>)
          .map((e) => GalleryPhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GalleryPhotosImplToJson(_$GalleryPhotosImpl instance) =>
    <String, dynamic>{'galleryPhotos': instance.galleryPhotos};
