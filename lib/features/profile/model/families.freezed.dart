// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'families.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Families _$FamiliesFromJson(Map<String, dynamic> json) {
  return _Families.fromJson(json);
}

/// @nodoc
mixin _$Families {
  List<Family> get families => throw _privateConstructorUsedError;

  /// Serializes this Families to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Families
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FamiliesCopyWith<Families> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamiliesCopyWith<$Res> {
  factory $FamiliesCopyWith(Families value, $Res Function(Families) then) =
      _$FamiliesCopyWithImpl<$Res, Families>;
  @useResult
  $Res call({List<Family> families});
}

/// @nodoc
class _$FamiliesCopyWithImpl<$Res, $Val extends Families>
    implements $FamiliesCopyWith<$Res> {
  _$FamiliesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Families
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? families = null}) {
    return _then(
      _value.copyWith(
            families: null == families
                ? _value.families
                : families // ignore: cast_nullable_to_non_nullable
                      as List<Family>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FamiliesImplCopyWith<$Res>
    implements $FamiliesCopyWith<$Res> {
  factory _$$FamiliesImplCopyWith(
    _$FamiliesImpl value,
    $Res Function(_$FamiliesImpl) then,
  ) = __$$FamiliesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Family> families});
}

/// @nodoc
class __$$FamiliesImplCopyWithImpl<$Res>
    extends _$FamiliesCopyWithImpl<$Res, _$FamiliesImpl>
    implements _$$FamiliesImplCopyWith<$Res> {
  __$$FamiliesImplCopyWithImpl(
    _$FamiliesImpl _value,
    $Res Function(_$FamiliesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Families
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? families = null}) {
    return _then(
      _$FamiliesImpl(
        families: null == families
            ? _value._families
            : families // ignore: cast_nullable_to_non_nullable
                  as List<Family>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FamiliesImpl implements _Families {
  const _$FamiliesImpl({required final List<Family> families})
    : _families = families;

  factory _$FamiliesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamiliesImplFromJson(json);

  final List<Family> _families;
  @override
  List<Family> get families {
    if (_families is EqualUnmodifiableListView) return _families;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_families);
  }

  @override
  String toString() {
    return 'Families(families: $families)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamiliesImpl &&
            const DeepCollectionEquality().equals(other._families, _families));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_families));

  /// Create a copy of Families
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FamiliesImplCopyWith<_$FamiliesImpl> get copyWith =>
      __$$FamiliesImplCopyWithImpl<_$FamiliesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamiliesImplToJson(this);
  }
}

abstract class _Families implements Families {
  const factory _Families({required final List<Family> families}) =
      _$FamiliesImpl;

  factory _Families.fromJson(Map<String, dynamic> json) =
      _$FamiliesImpl.fromJson;

  @override
  List<Family> get families;

  /// Create a copy of Families
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FamiliesImplCopyWith<_$FamiliesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
