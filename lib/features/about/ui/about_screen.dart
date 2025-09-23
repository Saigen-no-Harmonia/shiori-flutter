import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_theme.dart';
import 'view_model/about_view_model.dart';
import 'widgets/about_list_item.dart';

class AboutScreen extends ConsumerWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(aboutViewModelProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ヘッダー
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 24,
                right: 24,
                bottom: 24
              ),
              child: Text(
                'アプリについて',
                style: AppTheme.titleBold.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            // リスト
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AboutListItem(
                      icon: '📕',
                      title: 'ライセンス情報',
                      onTap: () => ref
                        .read(aboutViewModelProvider.notifier)
                        .openLicense()
                    ),
                    AboutListItem(
                      icon: '📱',
                      title: 'ソースコード (Android)',
                      onTap: () => ref
                        .read(aboutViewModelProvider.notifier)
                        .openSourceCodeFlutter()
                    ),
                    AboutListItem(
                      icon: '💻',
                      title: 'ソースコード (サーバー)',
                      onTap: () => ref
                        .read(aboutViewModelProvider.notifier)
                        .openSourceCodeServer()
                    ),
                    AboutListItem(
                      icon: '🏷️',
                      title: 'アプリバージョン',
                      subtitle: ref
                        .read(aboutViewModelProvider.notifier)
                        .getVersionText(),
                      showArrow: false,
                    ),
                    AboutListItem(
                      icon: '⚠️',
                      title: 'アプリの公開期限',
                      subtitle: '2026年1月末まで',
                      showArrow: false,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
