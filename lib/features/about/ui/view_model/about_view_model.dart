import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../state/about_state.dart';

part 'about_view_model.g.dart';

@Riverpod(keepAlive: true)
class AboutViewModel extends _$AboutViewModel {
  @override
  FutureOr<AboutState> build() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return AboutState(version: 'v${packageInfo.version}');
  }

  String getVersionText() {
    return state.when(
      data: (aboutState) => aboutState.version,
      loading: () => '取得中',
      error: (error, stack) => '取得に失敗しました',
    );
  }

  Future<void> openLicense() async {
    debugPrint('ライセンス情報を開く');
  }

  Future<void> openSourceCodeFlutter() async {
    final url = Uri.parse('https://github.com/Saigen-no-Harmonia/shiori_flutter');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> openSourceCodeServer() async {
    final url = Uri.parse('https://github.com/Saigen-no-Harmonia/shiori-server');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }
}
