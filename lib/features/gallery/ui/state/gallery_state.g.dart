// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GalleryStateImpl _$$GalleryStateImplFromJson(Map<String, dynamic> json) =>
    _$GalleryStateImpl(
      photos:
          (json['photos'] as List<dynamic>?)
              ?.map((e) => GalleryPhoto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      isAllLoaded: json['isAllLoaded'] as bool? ?? false,
      isPagingLoading: json['isPagingLoading'] as bool? ?? false,
      isPagingError: json['isPagingError'] as bool? ?? false,
      limit: (json['limit'] as num?)?.toInt() ?? 20,
    );

Map<String, dynamic> _$$GalleryStateImplToJson(_$GalleryStateImpl instance) =>
    <String, dynamic>{
      'photos': instance.photos,
      'offset': instance.offset,
      'isAllLoaded': instance.isAllLoaded,
      'isPagingLoading': instance.isPagingLoading,
      'isPagingError': instance.isPagingError,
      'limit': instance.limit,
    };
