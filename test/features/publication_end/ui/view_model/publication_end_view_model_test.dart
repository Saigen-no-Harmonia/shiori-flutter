import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shiori_flutter/features/common/providers/date_time_provider.dart';
import 'package:shiori_flutter/features/publication_end/ui/view_model/publication_end_view_model.dart';

// テスト用のDateTimeProvider
class MockDateTimeProvider implements DateTimeProvider {
  DateTime _currentTime = DateTime.now();

  void setCurrentTime(DateTime time) {
    _currentTime = time;
  }

  @override
  DateTime now() => _currentTime;
}

void main() {
  group('PublicationEndViewModel', () {
    late MockDateTimeProvider mockDateTimeProvider;
    late ProviderContainer container;

    setUp(() {
      mockDateTimeProvider = MockDateTimeProvider();
      
      container = ProviderContainer(
        overrides: [
          dateTimeProviderProvider.overrideWithValue(mockDateTimeProvider),
        ],
      );
    });

    tearDown(() {
      container.dispose();
    });

    group('isPublicationEnded', () {
      test('公開終了日前の場合、falseを返す', () {
        // Arrange
        final currentDate = DateTime(2025, 12, 31); // 公開終了日前
        mockDateTimeProvider.setCurrentTime(currentDate);

        // Act
        final notifier = container.read(publicationEndViewModelProvider.notifier);
        final result = notifier.isPublicationEnded();

        // Assert
        expect(result, false);
      });

      test('公開終了日後の場合、trueを返す', () {
        // Arrange
        final currentDate = DateTime(2026, 2, 1); // 公開終了日後
        mockDateTimeProvider.setCurrentTime(currentDate);

        // Act
        final notifier = container.read(publicationEndViewModelProvider.notifier);
        final result = notifier.isPublicationEnded();

        // Assert
        expect(result, true);
      });

      test('公開終了日時の直前の場合、falseを返す', () {
        // Arrange
        final currentDate = DateTime(2026, 1, 31, 23, 59, 58); // 1秒前
        mockDateTimeProvider.setCurrentTime(currentDate);

        // Act
        final notifier = container.read(publicationEndViewModelProvider.notifier);
        final result = notifier.isPublicationEnded();

        // Assert
        expect(result, false);
      });

      test('公開終了日時の直後の場合、trueを返す', () {
        // Arrange
        final currentDate = DateTime(2026, 2, 1, 0, 0, 0); // 1秒後
        mockDateTimeProvider.setCurrentTime(currentDate);

        // Act
        final notifier = container.read(publicationEndViewModelProvider.notifier);
        final result = notifier.isPublicationEnded();

        // Assert
        expect(result, true);
      });
    });
  });
}
