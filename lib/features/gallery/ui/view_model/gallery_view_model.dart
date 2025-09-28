import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repository/gallery_repository.dart';
import '../state/gallery_state.dart';

part 'gallery_view_model.g.dart';

@Riverpod(keepAlive: true)
class GalleryViewModel extends _$GalleryViewModel {
  @override
  FutureOr<GalleryState> build() async {
    return const GalleryState();
  }

  Future<void> loadInitialPhotos() async {
    try {
      final galleryPhotos = await ref.read(galleryRepositoryProvider).getGalleryPhotos(20, 0);
      
      state = AsyncValue.data(
        state.valueOrNull?.copyWith(
          photos: galleryPhotos.galleryPhotos,
          offset: galleryPhotos.galleryPhotos.length,
          isAllLoaded: galleryPhotos.galleryPhotos.isEmpty,
        ) ?? GalleryState(
          photos: galleryPhotos.galleryPhotos,
          offset: galleryPhotos.galleryPhotos.length,
          isAllLoaded: galleryPhotos.galleryPhotos.isEmpty,
        ),
      );
    } catch (error) {
      debugPrint('Error loading initial photos: $error');
      rethrow;
    }
  }

  Future<void> loadMorePhotos() async {
    final currentState = state.valueOrNull;
    if (currentState == null || currentState.isAllLoaded || currentState.isPagingLoading) {
      return;
    }

    // ページング読み込み開始
    state = AsyncValue.data(
      currentState.copyWith(isPagingLoading: true, isPagingError: false),
    );

    try {
      final galleryPhotos = await ref.read(galleryRepositoryProvider).getGalleryPhotos(
        currentState.limit,
        currentState.offset,
      );

      state = AsyncValue.data(
        currentState.copyWith(
          photos: [...currentState.photos, ...galleryPhotos.galleryPhotos],
          offset: currentState.offset + galleryPhotos.galleryPhotos.length,
          isAllLoaded: galleryPhotos.galleryPhotos.isEmpty,
          isPagingLoading: false,
          isPagingError: false,
        ),
      );
    } catch (error) {
      debugPrint('Error loading more photos: $error');
      state = AsyncValue.data(
        currentState.copyWith(
          isPagingLoading: false,
          isPagingError: true,
        ),
      );
    }
  }

  Future<void> retryPaging() async {
    await loadMorePhotos();
  }

  Future<void> reload() async {
    state = AsyncValue.data(const GalleryState());
    await loadInitialPhotos();
  }
}
