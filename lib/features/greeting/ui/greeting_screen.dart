import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_theme.dart';
import '../../common/ui/widgets/common_error.dart';
import '../../common/ui/widgets/common_loading.dart';
import '../model/greeting_response.dart';
import 'view_model/greeting_view_model.dart';

class GreetingScreen extends ConsumerStatefulWidget {
  const GreetingScreen({super.key});

  @override
  ConsumerState<GreetingScreen> createState() => _GreetingScreenState();
}

class _GreetingScreenState extends ConsumerState<GreetingScreen>
    with AutomaticKeepAliveClientMixin {
  
  @override
  bool get wantKeepAlive => true; // ウィジェットの状態を保持

  @override
  Widget build(BuildContext context) {
    super.build(context); // AutomaticKeepAliveClientMixin使用時に必要
    
    final greetingState = ref.watch(greetingViewModelProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: greetingState.when(
        data: (state) => _buildGreetingContent(context, state.greetingResponse),
        loading: () => const SafeArea(child: CommonLoading()),
        error: (error, stack) => SafeArea(
          child: CommonError(
            onRetry: () => ref.read(greetingViewModelProvider.notifier).refresh(),
          ),
        ),
      ),
    );
  }

  Widget _buildGreetingContent(BuildContext context, GreetingResponse greetingResponse) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // 画像部分（SafeAreaを無視して画面の一番上から表示）
          Container(
            height: MediaQuery.of(context).size.height * 0.5 + MediaQuery.of(context).padding.top,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CachedNetworkImage(
                  key: ValueKey(greetingResponse.photo.url),
                  imageUrl: greetingResponse.photo.url,
                  fit: BoxFit.cover,
                  
                  // キャッシュ設定を強化
                  memCacheWidth: null,
                  memCacheHeight: null,
                  
                  // フェードアニメーションを無効化
                  fadeInDuration: Duration.zero,
                  fadeOutDuration: Duration.zero,
                  
                  progressIndicatorBuilder: (context, url, downloadProgress) {
                    // 初回ダウンロード時のみプログレスを表示
                    if (downloadProgress.totalSize != null && 
                        downloadProgress.downloaded > 0 &&
                        downloadProgress.progress != null &&
                        downloadProgress.progress! < 1.0) {
                      return Container(
                        color: AppColors.secondary.withOpacity(0.1),
                        child: const Center(
                          child: CommonLoading(),
                        ),
                      );
                    }
                    // キャッシュから読み込み中は何も表示しない
                    return const SizedBox.shrink();
                  },
                  
                  errorWidget: (context, url, error) => Container(
                    color: AppColors.secondary.withOpacity(0.3),
                    child: const Icon(
                      Icons.image,
                      size: 100,
                      color: AppColors.textPrimary80,
                    ),
                  ),
                ),
                // グラデーションオーバーレイ
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, AppColors.background],
                      stops: [0.4, 1.0],
                    ),
                  ),
                ),
                // タイトル（ステータスバーの下に配置）
                Positioned(
                  bottom: 24,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                    child: Text(
                      'ごあいさつ',
                      textAlign: TextAlign.center,
                      style: AppTheme.largeTitleBold.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // テキストコンテンツ部分
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              greetingResponse.greeting.content,
              textAlign: TextAlign.center,
              style: AppTheme.body.copyWith(
                color: AppColors.textPrimary,
                height: 1.8,
              ),
            ),
          ),
          
          // 必要に応じて下部にスペースを追加
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
