import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_theme.dart';
import '../../common/ui/widgets/common_error.dart';
import '../../common/ui/widgets/common_loading.dart';
import 'view_model/access_view_model.dart';
import 'widgets/access_info_card.dart';

class AccessScreen extends ConsumerWidget {
  const AccessScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accessState = ref.watch(accessViewModelProvider);
  
    return Scaffold(
      backgroundColor: AppColors.background,
      body: accessState.when(
        data: (state) => _buildAccessContent(context, ref, state.access),
        loading: () => const CommonLoading(),
        error: (error, stack) => CommonError(
          onRetry: () => ref.read(accessViewModelProvider.notifier).refresh()
        ),
      ),
    );
  }

  Widget _buildAccessContent(BuildContext context, WidgetRef ref, access) {
    final viewModel = ref.read(accessViewModelProvider.notifier);
  
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Text(
              '会場へのアクセス',
              style: AppTheme.titleBold.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 24),
            AccessInfoCard(
              title: '会場名',
              content: access.restaurantName,
              buttonText: '会場ホームページ',
              onTap: () => viewModel.openRestaurantURL(),
            ),
            AccessInfoCard(
              title: '会場住所',
              content: access.venueAddress,
              buttonText: 'Google Mapで場所を確認する',
              onTap: () => viewModel.openGoogleMaps(),
            ),
            AccessInfoCard(
              title: '集合場所',
              content: access.gatheringSpot,
              buttonText: '詳細なアクセスを確認する',
              onTap: () => viewModel.openVenueURL(),
            ),
            AccessInfoCard(
              title: '集合時間',
              content: viewModel.formatDateTime(access.gatheringDate),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
