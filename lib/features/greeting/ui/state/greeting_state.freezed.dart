// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'greeting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GreetingState _$GreetingStateFromJson(Map<String, dynamic> json) {
  return _GreetingState.fromJson(json);
}

/// @nodoc
mixin _$GreetingState {
  GreetingResponse get greetingResponse => throw _privateConstructorUsedError;

  /// Serializes this GreetingState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GreetingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GreetingStateCopyWith<GreetingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GreetingStateCopyWith<$Res> {
  factory $GreetingStateCopyWith(
    GreetingState value,
    $Res Function(GreetingState) then,
  ) = _$GreetingStateCopyWithImpl<$Res, GreetingState>;
  @useResult
  $Res call({GreetingResponse greetingResponse});

  $GreetingResponseCopyWith<$Res> get greetingResponse;
}

/// @nodoc
class _$GreetingStateCopyWithImpl<$Res, $Val extends GreetingState>
    implements $GreetingStateCopyWith<$Res> {
  _$GreetingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GreetingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? greetingResponse = null}) {
    return _then(
      _value.copyWith(
            greetingResponse: null == greetingResponse
                ? _value.greetingResponse
                : greetingResponse // ignore: cast_nullable_to_non_nullable
                      as GreetingResponse,
          )
          as $Val,
    );
  }

  /// Create a copy of GreetingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GreetingResponseCopyWith<$Res> get greetingResponse {
    return $GreetingResponseCopyWith<$Res>(_value.greetingResponse, (value) {
      return _then(_value.copyWith(greetingResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GreetingStateImplCopyWith<$Res>
    implements $GreetingStateCopyWith<$Res> {
  factory _$$GreetingStateImplCopyWith(
    _$GreetingStateImpl value,
    $Res Function(_$GreetingStateImpl) then,
  ) = __$$GreetingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GreetingResponse greetingResponse});

  @override
  $GreetingResponseCopyWith<$Res> get greetingResponse;
}

/// @nodoc
class __$$GreetingStateImplCopyWithImpl<$Res>
    extends _$GreetingStateCopyWithImpl<$Res, _$GreetingStateImpl>
    implements _$$GreetingStateImplCopyWith<$Res> {
  __$$GreetingStateImplCopyWithImpl(
    _$GreetingStateImpl _value,
    $Res Function(_$GreetingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GreetingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? greetingResponse = null}) {
    return _then(
      _$GreetingStateImpl(
        greetingResponse: null == greetingResponse
            ? _value.greetingResponse
            : greetingResponse // ignore: cast_nullable_to_non_nullable
                  as GreetingResponse,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GreetingStateImpl implements _GreetingState {
  const _$GreetingStateImpl({required this.greetingResponse});

  factory _$GreetingStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GreetingStateImplFromJson(json);

  @override
  final GreetingResponse greetingResponse;

  @override
  String toString() {
    return 'GreetingState(greetingResponse: $greetingResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreetingStateImpl &&
            (identical(other.greetingResponse, greetingResponse) ||
                other.greetingResponse == greetingResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, greetingResponse);

  /// Create a copy of GreetingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GreetingStateImplCopyWith<_$GreetingStateImpl> get copyWith =>
      __$$GreetingStateImplCopyWithImpl<_$GreetingStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GreetingStateImplToJson(this);
  }
}

abstract class _GreetingState implements GreetingState {
  const factory _GreetingState({
    required final GreetingResponse greetingResponse,
  }) = _$GreetingStateImpl;

  factory _GreetingState.fromJson(Map<String, dynamic> json) =
      _$GreetingStateImpl.fromJson;

  @override
  GreetingResponse get greetingResponse;

  /// Create a copy of GreetingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GreetingStateImplCopyWith<_$GreetingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
