import 'package:freezed_annotation/freezed_annotation.dart';

part 'greeting.freezed.dart';
part 'greeting.g.dart';

@freezed
class Greeting with _$Greeting {
  const factory Greeting({
    required String content,
  }) = _Greeting;

  factory Greeting.fromJson(Map<String, dynamic> json) => _$GreetingFromJson(json);
}
