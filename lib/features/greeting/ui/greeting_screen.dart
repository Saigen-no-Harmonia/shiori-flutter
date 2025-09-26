import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_theme.dart';
import '../../common/ui/widgets/common_error.dart';
import '../../common/ui/widgets/common_loading.dart';
import '../model/greeting_response.dart';
import 'view_model/greeting_view_model.dart';

class GreetingScreen extends ConsumerWidget {
  const GreetingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greetingState = ref.watch(greetingViewModelProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: greetingState.when(
        data: (state) => _buildGreetingContent(context, state.greetingResponse),
        loading: () => const CommonLoading(),
        error: (error, stack) => CommonError(
          onRetry: () => ref.read(greetingViewModelProvider.notifier).refresh(),
        ),
      ),
    );
  }

  Widget _buildGreetingContent(BuildContext context, GreetingResponse greetingResponse) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height * 0.5,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                CachedNetworkImage(
                  imageUrl: greetingResponse.photo.url,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: AppColors.secondary,
                    child: const CommonLoading(),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: AppColors.secondary,
                    child: const Icon(
                      Icons.image,
                      size: 100,
                      color: AppColors.white,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, AppColors.background],
                      stops: [0.6, 1.0],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 24,
                  left: 0,
                  right: 0,
                  child: Text(
                    'ごあいさつ',
                    textAlign: TextAlign.center,
                    style: AppTheme.largeTitleBold.copyWith(
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: AppColors.background,
          elevation: 0,
        ),
        SliverToBoxAdapter(
          child: Padding(
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
        ),
      ],
    );
  }
}
