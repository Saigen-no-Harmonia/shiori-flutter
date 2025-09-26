import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/greeting_response.dart';

part 'greeting_state.freezed.dart';
part 'greeting_state.g.dart';

@freezed
class GreetingState with _$GreetingState {
  const factory GreetingState({
    required GreetingResponse greetingResponse,
  }) = _GreetingState;

  factory GreetingState.fromJson(Map<String, dynamic> json) =>
      _$GreetingStateFromJson(json);
}
