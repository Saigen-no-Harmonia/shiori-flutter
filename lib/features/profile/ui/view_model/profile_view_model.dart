import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repository/profile_repository.dart';
import '../state/profile_state.dart';

part 'profile_view_model.g.dart';

@Riverpod(keepAlive: true)
class ProfileViewModel extends _$ProfileViewModel {
  @override
  FutureOr<ProfileState> build() async {
    try {
      final families = await ref.read(profileRepositoryProvider).getProfile();
      return ProfileState(families: families);
    } catch (e) {
      debugPrint('Error fetching profile: $e');
      rethrow;
    }
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}
