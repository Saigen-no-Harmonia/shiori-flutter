import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/remote/api_client.dart';
import '../model/access.dart';

part 'access_repository.g.dart';

@riverpod
AccessRepository accessRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return AccessRepository(apiClient);
}

class AccessRepository {
  final ApiClient apiClient;

  AccessRepository(this.apiClient);

  Future<Access> getAccess() async {
    try {
      final response = await apiClient.get<Map<String, dynamic>>('/access');
      return Access.fromJson(response);
    } catch (e) {
      throw Exception('Failed to fetch access: $e');
    }
  }
}
