import 'package:flutter/material.dart';

import '../../../../theme/app_colors.dart';
import '../../../../theme/app_theme.dart';
import '../../model/family.dart';
import 'presenter_profile_view.dart';
import 'participant_profile_view.dart';
import 'cat_profile_view.dart';

class FamilyProfileView extends StatelessWidget {
  const FamilyProfileView({
    super.key,
    required this.family,
  });

  final Family family;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PresenterProfileView(profile: family.presenter),
          const SizedBox(height: 24),
          const Divider(color: AppColors.tertiary),
          const SizedBox(height: 24),
          Center(
            child: Text(
              'ご家族',
              style: AppTheme.title3Bold.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          ),
          const SizedBox(height: 24),
          ...family.participants.map(
            (participant) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ParticipantProfileView(profile: participant),
            ),
          ),
          if (family.cats != null && family.cats!.isNotEmpty) ...[
            const SizedBox(height: 16),
            ...family.cats!.map(
              (cat) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CatProfileView(profile: cat),
              ),
            ),
          ],
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
