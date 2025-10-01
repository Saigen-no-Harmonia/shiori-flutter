import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/providers/date_time_provider.dart';

part 'publication_end_view_model.g.dart';

@riverpod
class PublicationEndViewModel extends _$PublicationEndViewModel {
  /// アプリの公開終了日時
  static final DateTime _publicationEndDate = DateTime(2026, 1, 31, 23, 59, 59);

  @override
  bool build() {
    return isPublicationEnded();
  }

  /// アプリが公開終了しているかどうかを判定
  bool isPublicationEnded() {
    final now = ref.read(dateTimeProviderProvider).now();
    return now.isAfter(_publicationEndDate);
  }
}
