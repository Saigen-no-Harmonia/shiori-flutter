import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/access.dart';

part 'access_state.freezed.dart';
part 'access_state.g.dart';

@freezed
class AccessState with _$AccessState {
  const factory AccessState({
    required Access access,
  }) = _AccessState;

  factory AccessState.fromJson(Map<String, dynamic> json) =>
      _$AccessStateFromJson(json);
}
