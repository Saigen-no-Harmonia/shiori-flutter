import 'package:flutter/material.dart';

import '../../../../constants/assets.dart';
import '../../../../theme/app_colors.dart';
import '../../../../theme/app_theme.dart';

class AccessInfoCard extends StatelessWidget {
  const AccessInfoCard({
    super.key,
    required this.title,
    required this.content,
    this.onTap,
    this.buttonText,
  });

  final String title;
  final String content;
  final VoidCallback? onTap;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.ribbon,
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: AppTheme.headline.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              Image.asset(
                Assets.ribbon,
                width: 20,
                height: 20,
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(color: AppColors.tertiary),
          const SizedBox(height: 12),
          Text(
            content,
            style: AppTheme.bodyBold.copyWith(
              color: AppColors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          if (onTap != null && buttonText != null) ...[
            const SizedBox(height: 16),
            Center(
              child: GestureDetector(
                onTap: onTap,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      buttonText!,
                      style: AppTheme.bodyBold.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      height: 24,
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.chevron_right,
                        color: AppColors.primary,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}