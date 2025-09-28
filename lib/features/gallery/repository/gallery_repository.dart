import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/remote/api_client.dart';
import '../model/gallery_photo.dart';
import '../model/gallery_photos.dart';

part 'gallery_repository.g.dart';

@riverpod
GalleryRepository galleryRepository(Ref ref) {
  return GalleryRepository(
    apiClient: ref.read(apiClientProvider),
  );
}

class GalleryRepository {
  const GalleryRepository({
    required this.apiClient,
  });

  final ApiClient apiClient;

  Future<GalleryPhotos> getGalleryPhotos(int limit, int offset) async {
    final responseData = await apiClient.get(
      '/gallery',
      queryParameters: {
        'limit': limit,
        'offset': offset,
      },
    );
    return GalleryPhotos.fromJson(responseData);
  }
}
