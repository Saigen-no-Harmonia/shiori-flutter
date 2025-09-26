import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/remote/api_client.dart';
import '../model/greeting_response.dart';

part 'greeting_repository.g.dart';

@riverpod
GreetingRepository greetingRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return GreetingRepository(apiClient);
}

class GreetingRepository {
  final ApiClient apiClient;

  GreetingRepository(this.apiClient);

  Future<GreetingResponse> getGreeting() async {
    try {
      final response = await apiClient.get<Map<String, dynamic>>('/top');
      return GreetingResponse.fromJson(response);
    } catch (error) {
      throw Exception(error);
    }
  }
}
