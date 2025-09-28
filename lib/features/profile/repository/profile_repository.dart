import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/remote/api_client.dart';
import '../model/families.dart';
import '../model/family.dart';
import '../model/presenter_profile.dart';
import '../model/participant_profile.dart';
import '../model/cat_profile.dart';

part 'profile_repository.g.dart';

@riverpod
ProfileRepository profileRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return ProfileRepository(apiClient);
}

class ProfileRepository {
  final ApiClient apiClient;

  ProfileRepository(this.apiClient);

  Future<Families> getProfile() async {
    try {
      final response = await apiClient.get<Map<String, dynamic>>('/families');
      return Families.fromJson(response);
    } catch (e) {
      throw Exception('Failed to fetch profile: $e');
    }
  }
}
