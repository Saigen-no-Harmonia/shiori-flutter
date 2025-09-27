import 'package:freezed_annotation/freezed_annotation.dart';

import 'family.dart';

part 'families.freezed.dart';
part 'families.g.dart';

@freezed
class Families with _$Families {
  const factory Families({
    required List<Family> families,
  }) = _Families;

  factory Families.fromJson(Map<String, dynamic> json) =>
      _$FamiliesFromJson(json);
}
