import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repository/greeting_repository.dart';
import '../state/greeting_state.dart';

part 'greeting_view_model.g.dart';

@Riverpod(keepAlive: true)
class GreetingViewModel extends _$GreetingViewModel {
  @override
  FutureOr<GreetingState> build() async {
    try {
      final greetingResponse = await ref.read(greetingRepositoryProvider).getGreeting();
      return GreetingState(greetingResponse: greetingResponse);
    } catch (error) {
      rethrow;
    }
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}
