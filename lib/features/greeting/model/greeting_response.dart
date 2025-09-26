import 'package:freezed_annotation/freezed_annotation.dart';

import 'greeting.dart';
import 'greeting_photo.dart';

part 'greeting_response.freezed.dart';
part 'greeting_response.g.dart';

@freezed
class GreetingResponse with _$GreetingResponse {
  const factory GreetingResponse({
    required Greeting greeting,
    @JsonKey(name: 'topPhoto') required GreetingPhoto photo,
  }) = _GreetingResponse;

  factory GreetingResponse.fromJson(Map<String, dynamic> json) =>
      _$GreetingResponseFromJson(json);
}
