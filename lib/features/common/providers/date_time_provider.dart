import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'date_time_provider.g.dart';

@riverpod
DateTime currentDateTime(Ref ref) {
  return DateTime.now();
}

// テスト用のインターフェース
abstract class DateTimeProvider {
  DateTime now();
}

class RealDateTimeProvider implements DateTimeProvider {
  @override
  DateTime now() => DateTime.now();
}

@riverpod
DateTimeProvider dateTimeProvider(Ref ref) {
  return RealDateTimeProvider();
}
