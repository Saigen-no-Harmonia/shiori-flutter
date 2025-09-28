import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../constants/assets.dart';
import '../../../../theme/app_colors.dart';
import '../../../../theme/app_theme.dart';
import '../../model/presenter_profile.dart';

class PresenterProfileView extends StatelessWidget {
  const PresenterProfileView({
    super.key,
    required this.profile,
  });

  final PresenterProfile profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
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
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              imageUrl: profile.photoURL,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                width: 120,
                height: 120,
                color: AppColors.secondary.withOpacity(0.3),
                child: const Icon(
                  Icons.person,
                  size: 80,
                  color: AppColors.textPrimary80,
                ),
              ),
              errorWidget: (context, url, error) => Container(
                width: 120,
                height: 120,
                color: AppColors.secondary.withOpacity(0.3),
                child: const Icon(
                  Icons.person,
                  size: 80,
                  color: AppColors.textPrimary80,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '${profile.firstName} ${profile.lastName}',
            style: AppTheme.title2Bold.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '${profile.firstNameKana} ${profile.lastNameKana}',
            style: AppTheme.body.copyWith(
              color: AppColors.textPrimary80,
            ),
          ),
          const SizedBox(height: 8),
          if (profile.nickName.isNotEmpty)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                profile.nickName,
                style: AppTheme.calloutBold.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildProfileRow('生年月日', DateFormat('yyyy年M月d日').format(profile.birthDate)),
                const Divider(color: AppColors.textPrimary20),
                _buildProfileRow('出身地', profile.birthPlace),
                const Divider(color: AppColors.textPrimary20),
                _buildProfileRow('職業', profile.job),
                const Divider(color: AppColors.textPrimary20),
                _buildProfileRow('趣味', profile.hobby),
                const Divider(color: AppColors.textPrimary20),
                _buildProfileRow('好きなところ', profile.likeBy),
                const Divider(color: AppColors.textPrimary20),
                _buildProfileRow('好きなラーメン', profile.ramen),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildProfileRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                Assets.ribbon,
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 8),
              Text(
                label,
                style: AppTheme.headline.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Text(
                value,
                style: AppTheme.body.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
          ),
        ],
      ),
    );
  }
}
