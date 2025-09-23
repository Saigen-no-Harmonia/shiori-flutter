// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AboutState _$AboutStateFromJson(Map<String, dynamic> json) {
  return _AboutState.fromJson(json);
}

/// @nodoc
mixin _$AboutState {
  String get version => throw _privateConstructorUsedError;

  /// Serializes this AboutState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AboutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AboutStateCopyWith<AboutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutStateCopyWith<$Res> {
  factory $AboutStateCopyWith(
    AboutState value,
    $Res Function(AboutState) then,
  ) = _$AboutStateCopyWithImpl<$Res, AboutState>;
  @useResult
  $Res call({String version});
}

/// @nodoc
class _$AboutStateCopyWithImpl<$Res, $Val extends AboutState>
    implements $AboutStateCopyWith<$Res> {
  _$AboutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? version = null}) {
    return _then(
      _value.copyWith(
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AboutStateImplCopyWith<$Res>
    implements $AboutStateCopyWith<$Res> {
  factory _$$AboutStateImplCopyWith(
    _$AboutStateImpl value,
    $Res Function(_$AboutStateImpl) then,
  ) = __$$AboutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String version});
}

/// @nodoc
class __$$AboutStateImplCopyWithImpl<$Res>
    extends _$AboutStateCopyWithImpl<$Res, _$AboutStateImpl>
    implements _$$AboutStateImplCopyWith<$Res> {
  __$$AboutStateImplCopyWithImpl(
    _$AboutStateImpl _value,
    $Res Function(_$AboutStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AboutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? version = null}) {
    return _then(
      _$AboutStateImpl(
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutStateImpl implements _AboutState {
  const _$AboutStateImpl({this.version = 'v1.0.0'});

  factory _$AboutStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutStateImplFromJson(json);

  @override
  @JsonKey()
  final String version;

  @override
  String toString() {
    return 'AboutState(version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutStateImpl &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version);

  /// Create a copy of AboutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutStateImplCopyWith<_$AboutStateImpl> get copyWith =>
      __$$AboutStateImplCopyWithImpl<_$AboutStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutStateImplToJson(this);
  }
}

abstract class _AboutState implements AboutState {
  const factory _AboutState({final String version}) = _$AboutStateImpl;

  factory _AboutState.fromJson(Map<String, dynamic> json) =
      _$AboutStateImpl.fromJson;

  @override
  String get version;

  /// Create a copy of AboutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AboutStateImplCopyWith<_$AboutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
