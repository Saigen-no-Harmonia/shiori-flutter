import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../theme/app_colors.dart';
import '../../../../theme/app_theme.dart';
import '../../model/cat_profile.dart';

class CatProfileView extends StatelessWidget {
  const CatProfileView({
    super.key,
    required this.profile,
  });

  final CatProfile profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.tertiary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.tertiary.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: CachedNetworkImage(
              imageUrl: profile.photoURL,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                width: 80,
                height: 80,
                color: AppColors.tertiary.withOpacity(0.3),
                child: const Icon(
                  Icons.pets,
                  size: 40,
                  color: AppColors.textPrimary80,
                ),
              ),
              errorWidget: (context, url, error) => Container(
                width: 80,
                height: 80,
                color: AppColors.tertiary.withOpacity(0.3),
                child: const Icon(
                  Icons.pets,
                  size: 40,
                  color: AppColors.textPrimary80,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      profile.name,
                      style: AppTheme.bodyBold.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: AppColors.tertiary.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '🐱',
                        style: AppTheme.caption.copyWith(
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                _buildInfoText('年齢', '${profile.age}歳'),
                _buildInfoText('性格', profile.temperament),
                _buildInfoText('好きな食べ物', profile.likeFood),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoText(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Text(
        '$label: $value',
        style: AppTheme.caption.copyWith(
          color: AppColors.textPrimary80,
        ),
      ),
    );
  }
}
