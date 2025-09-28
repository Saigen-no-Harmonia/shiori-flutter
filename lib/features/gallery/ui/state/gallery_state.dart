import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/gallery_photo.dart';

part 'gallery_state.freezed.dart';
part 'gallery_state.g.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState({
    @Default([]) List<GalleryPhoto> photos,
    @Default(0) int offset,
    @Default(false) bool isAllLoaded,
    @Default(false) bool isPagingLoading,
    @Default(false) bool isPagingError,
    @Default(20) int limit,
  }) = _GalleryState;

  factory GalleryState.fromJson(Map<String, dynamic> json) =>
      _$GalleryStateFromJson(json);
}
