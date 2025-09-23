import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_state.freezed.dart';
part 'about_state.g.dart';

@freezed
class AboutState with _$AboutState {
  const factory AboutState({
    @Default('v1.0.0') String version,
  }) = _AboutState;

  factory AboutState.fromJson(Map<String, dynamic> json) => _$AboutStateFromJson(json);
}
