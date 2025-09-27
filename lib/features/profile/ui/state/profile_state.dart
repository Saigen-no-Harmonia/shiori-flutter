import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/families.dart';

part 'profile_state.freezed.dart';
part 'profile_state.g.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required Families families,
  }) = _ProfileState;

  factory ProfileState.fromJson(Map<String, dynamic> json) =>
      _$ProfileStateFromJson(json);
}
