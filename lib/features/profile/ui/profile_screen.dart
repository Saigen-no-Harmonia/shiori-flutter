import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_theme.dart';
import '../../common/ui/widgets/common_error.dart';
import '../../common/ui/widgets/common_loading.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // 仮のデータ（後でViewModelから取得）
  final List<String> _families = ['ほげ家', 'ふが家'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _families.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            // タブバー部分
            Container(
              width: double.infinity,
              color: AppColors.background,
              child: TabBar(
                isScrollable: true,
                controller: _tabController,
                tabAlignment: TabAlignment.center,
                labelColor: AppColors.primary,
                unselectedLabelColor: AppColors.textPrimary80,
                indicatorColor: AppColors.primary,
                indicatorWeight: 3,
                labelStyle: AppTheme.bodyBold.copyWith(
                  fontSize: 16,
                ),
                unselectedLabelStyle: AppTheme.body.copyWith(
                  fontSize: 16,
                ),
                tabs: _families
                    .map((family) => Tab(
                          text: family,
                          height: 48,
                        ))
                    .toList(),
              ),
            ),
            // タブビュー部分
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: _families
                    .map((family) => _buildFamilyProfile(family))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFamilyProfile(String familyName) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 仮のコンテンツ
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: AppColors.tertiary,
                width: 1,
              ),
            ),
            child: Column(
              children: [
                Text(
                  '$familyNameのプロフィール',
                  style: AppTheme.title3Bold.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'ここに$familyNameの詳細情報が表示されます。',
                  style: AppTheme.body.copyWith(
                    color: AppColors.textPrimary80,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
