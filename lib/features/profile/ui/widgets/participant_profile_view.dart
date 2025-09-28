import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../constants/assets.dart';
import '../../../../theme/app_colors.dart';
import '../../../../theme/app_theme.dart';
import '../../model/participant_profile.dart';

class ParticipantProfileView extends StatelessWidget {
  const ParticipantProfileView({
    super.key,
    required this.profile,
  });

  final ParticipantProfile profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.tertiary.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 上部：画像と基本情報
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // プロフィール写真
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: CachedNetworkImage(
                  imageUrl: profile.photoURL,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    width: 100,
                    height: 100,
                    color: AppColors.secondary.withOpacity(0.3),
                    child: const Icon(
                      Icons.person,
                      size: 40,
                      color: AppColors.textPrimary80,
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                    width: 100,
                    height: 100,
                    color: AppColors.secondary.withOpacity(0.3),
                    child: const Icon(
                      Icons.person,
                      size: 40,
                      color: AppColors.textPrimary80,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              // 基本情報（名前、ふりがな、続柄のみ）
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 名前と続柄
                    Row(
                      children: [
                        Text(
                          '${profile.firstName} ${profile.lastName}',
                          style: AppTheme.title3Bold.copyWith(
                            color: AppColors.textPrimary,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColors.secondary.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            profile.relation,
                            style: AppTheme.caption.copyWith(
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 4),
                    
                    // ふりがな
                    Text(
                      '${profile.firstNameKana} ${profile.lastNameKana}',
                      style: AppTheme.caption.copyWith(
                        color: AppColors.textPrimary80,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 24),
          
          // 下部：詳細情報（画像の下に配置）
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInfoText('生年月日', DateFormat('yyyy年M月d日').format(profile.birthDate)),
              const Divider(color: AppColors.textPrimary20),
              _buildInfoText('職業', profile.job),
              const Divider(color: AppColors.textPrimary20),
              _buildInfoText('趣味', profile.hobby),
              const Divider(color: AppColors.textPrimary20),
              _buildInfoText('好きな食べ物', profile.likeFood),
              
              // メッセージ
              if (profile.message.isNotEmpty) ...[
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.circular(8),
                    border: BoxBorder.all(
                      color: AppColors.tertiary,
                    ),
                  ),
                  child: Text(
                    profile.message,
                    style: AppTheme.calloutBold.copyWith(
                      color: AppColors.textPrimary80,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoText(String label, String value) {
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
                style: AppTheme.bodyBold.copyWith(
                  color: AppColors.textPrimary,
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
