import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_theme.dart';
import '../../common/ui/widgets/common_error.dart';
import '../../common/ui/widgets/common_loading.dart';
import 'view_model/profile_view_model.dart';
import 'widgets/family_profile_view.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final profileState = ref.watch(profileViewModelProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: profileState.when(
        loading: () => const CommonLoading(),
        error: (error, stack) => CommonError(
          onRetry: () => ref.read(profileViewModelProvider.notifier).refresh(),
        ),
        data: (state) {
          final families = state.families.families;
          
          if (_tabController == null || _tabController!.length != families.length) {
            _tabController?.dispose();
            _tabController = TabController(length: families.length, vsync: this);
          }
          return SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: AppColors.background,
                  child: TabBar(
                    controller: _tabController,
                    labelColor: AppColors.primary,
                    unselectedLabelColor: AppColors.textPrimary80,
                    indicatorColor: AppColors.primary,
                    indicatorWeight: 3,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelStyle: AppTheme.bodyBold.copyWith(
                      fontSize: 16,
                    ),
                    unselectedLabelStyle: AppTheme.body.copyWith(
                      fontSize: 16,
                    ),
                    tabs: families
                      .map((family) => Tab(
                            text: '${family.name}家',
                            height: 48,
                          ))
                      .toList(),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: families
                        .map((family) => FamilyProfileView(family: family))
                        .toList(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
