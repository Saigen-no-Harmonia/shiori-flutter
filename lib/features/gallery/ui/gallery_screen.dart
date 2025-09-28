import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_theme.dart';
import '../../common/ui/widgets/common_error.dart';
import '../../common/ui/widgets/common_loading.dart';
import '../model/gallery_photo.dart';
import 'view_model/gallery_view_model.dart';
import 'widgets/photo_detail_screen.dart';

class GalleryScreen extends ConsumerStatefulWidget {
  const GalleryScreen({super.key});

  @override
  ConsumerState<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends ConsumerState<GalleryScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    
    // 初期読み込み
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(galleryViewModelProvider.notifier).loadInitialPhotos();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.8) {
      ref.read(galleryViewModelProvider.notifier).loadMorePhotos();
    }
  }

  void _onPhotoTap(GalleryPhoto photo) {
    Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute(
        builder: (context) => PhotoDetailScreen(photo: photo),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final galleryState = ref.watch(galleryViewModelProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: galleryState.maybeWhen(
          orElse: () => const CommonLoading(),
          data: (state) {
            return Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(4),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                    ),
                    itemCount: state.photos.length,
                    itemBuilder: (context, index) {
                      final photo = state.photos[index];
                      return GestureDetector(
                        onTap: () => _onPhotoTap(photo),
                        child: CachedNetworkImage(
                          key: ValueKey(photo.id),
                          imageUrl: photo.url,
                          fit: BoxFit.cover,
                          fadeInDuration: const Duration(milliseconds: 200),
                          fadeOutDuration: const Duration(milliseconds: 100),
                          placeholder: (context, url) {
                            return Center(
                              child: SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    AppColors.primary,
                                  ),
                                ),
                              ),
                            );
                          },
                          errorWidget: (context, url, error) => Container(
                            color: AppColors.secondary.withOpacity(0.3),
                            child: const Icon(
                              Icons.error,
                              color: AppColors.textPrimary80,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                
                // ページング関連のUI
                if (state.isPagingError) ...[
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          '読み込みに失敗しました',
                          style: AppTheme.body.copyWith(
                            color: AppColors.textPrimary80,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () => ref.read(galleryViewModelProvider.notifier).retryPaging(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: AppColors.white,
                          ),
                          child: const Text('再試行'),
                        ),
                      ],
                    ),
                  ),
                ] else if (state.isPagingLoading) ...[
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: CommonLoading(),
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
