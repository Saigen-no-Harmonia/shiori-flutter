// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'greeting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Greeting _$GreetingFromJson(Map<String, dynamic> json) {
  return _Greeting.fromJson(json);
}

/// @nodoc
mixin _$Greeting {
  String get content => throw _privateConstructorUsedError;

  /// Serializes this Greeting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Greeting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GreetingCopyWith<Greeting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GreetingCopyWith<$Res> {
  factory $GreetingCopyWith(Greeting value, $Res Function(Greeting) then) =
      _$GreetingCopyWithImpl<$Res, Greeting>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$GreetingCopyWithImpl<$Res, $Val extends Greeting>
    implements $GreetingCopyWith<$Res> {
  _$GreetingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Greeting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? content = null}) {
    return _then(
      _value.copyWith(
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GreetingImplCopyWith<$Res>
    implements $GreetingCopyWith<$Res> {
  factory _$$GreetingImplCopyWith(
    _$GreetingImpl value,
    $Res Function(_$GreetingImpl) then,
  ) = __$$GreetingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$GreetingImplCopyWithImpl<$Res>
    extends _$GreetingCopyWithImpl<$Res, _$GreetingImpl>
    implements _$$GreetingImplCopyWith<$Res> {
  __$$GreetingImplCopyWithImpl(
    _$GreetingImpl _value,
    $Res Function(_$GreetingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Greeting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? content = null}) {
    return _then(
      _$GreetingImpl(
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GreetingImpl implements _Greeting {
  const _$GreetingImpl({required this.content});

  factory _$GreetingImpl.fromJson(Map<String, dynamic> json) =>
      _$$GreetingImplFromJson(json);

  @override
  final String content;

  @override
  String toString() {
    return 'Greeting(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreetingImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of Greeting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GreetingImplCopyWith<_$GreetingImpl> get copyWith =>
      __$$GreetingImplCopyWithImpl<_$GreetingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GreetingImplToJson(this);
  }
}

abstract class _Greeting implements Greeting {
  const factory _Greeting({required final String content}) = _$GreetingImpl;

  factory _Greeting.fromJson(Map<String, dynamic> json) =
      _$GreetingImpl.fromJson;

  @override
  String get content;

  /// Create a copy of Greeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GreetingImplCopyWith<_$GreetingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
