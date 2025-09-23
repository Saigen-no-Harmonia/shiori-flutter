import 'package:flutter/material.dart';

import '../../../../theme/app_colors.dart';
import '../../../../theme/app_theme.dart';

class AboutListItem extends StatelessWidget {
  const AboutListItem({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.onTap,
    this.showArrow = true,
  });

  final String icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final bool showArrow;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: const BoxDecoration(
          color: AppColors.background,
          border: Border(
            bottom: BorderSide(
              color: AppColors.textPrimary20,
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            Text(
              icon,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: AppTheme.body.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            if (subtitle != null) ...[
              Text(
                subtitle!,
                style: AppTheme.body.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(width: 8),
            ],
            if (showArrow && onTap != null)
              const Icon(
                Icons.chevron_right,
                color: AppColors.textPrimary80,
                size: 20,
              ),
          ],
        ),
      ),
    );
  }
}