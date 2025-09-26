// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'greeting_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GreetingResponse _$GreetingResponseFromJson(Map<String, dynamic> json) {
  return _GreetingResponse.fromJson(json);
}

/// @nodoc
mixin _$GreetingResponse {
  Greeting get greeting => throw _privateConstructorUsedError;
  @JsonKey(name: 'topPhoto')
  GreetingPhoto get photo => throw _privateConstructorUsedError;

  /// Serializes this GreetingResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GreetingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GreetingResponseCopyWith<GreetingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GreetingResponseCopyWith<$Res> {
  factory $GreetingResponseCopyWith(
    GreetingResponse value,
    $Res Function(GreetingResponse) then,
  ) = _$GreetingResponseCopyWithImpl<$Res, GreetingResponse>;
  @useResult
  $Res call({
    Greeting greeting,
    @JsonKey(name: 'topPhoto') GreetingPhoto photo,
  });

  $GreetingCopyWith<$Res> get greeting;
  $GreetingPhotoCopyWith<$Res> get photo;
}

/// @nodoc
class _$GreetingResponseCopyWithImpl<$Res, $Val extends GreetingResponse>
    implements $GreetingResponseCopyWith<$Res> {
  _$GreetingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GreetingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? greeting = null, Object? photo = null}) {
    return _then(
      _value.copyWith(
            greeting: null == greeting
                ? _value.greeting
                : greeting // ignore: cast_nullable_to_non_nullable
                      as Greeting,
            photo: null == photo
                ? _value.photo
                : photo // ignore: cast_nullable_to_non_nullable
                      as GreetingPhoto,
          )
          as $Val,
    );
  }

  /// Create a copy of GreetingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GreetingCopyWith<$Res> get greeting {
    return $GreetingCopyWith<$Res>(_value.greeting, (value) {
      return _then(_value.copyWith(greeting: value) as $Val);
    });
  }

  /// Create a copy of GreetingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GreetingPhotoCopyWith<$Res> get photo {
    return $GreetingPhotoCopyWith<$Res>(_value.photo, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GreetingResponseImplCopyWith<$Res>
    implements $GreetingResponseCopyWith<$Res> {
  factory _$$GreetingResponseImplCopyWith(
    _$GreetingResponseImpl value,
    $Res Function(_$GreetingResponseImpl) then,
  ) = __$$GreetingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Greeting greeting,
    @JsonKey(name: 'topPhoto') GreetingPhoto photo,
  });

  @override
  $GreetingCopyWith<$Res> get greeting;
  @override
  $GreetingPhotoCopyWith<$Res> get photo;
}

/// @nodoc
class __$$GreetingResponseImplCopyWithImpl<$Res>
    extends _$GreetingResponseCopyWithImpl<$Res, _$GreetingResponseImpl>
    implements _$$GreetingResponseImplCopyWith<$Res> {
  __$$GreetingResponseImplCopyWithImpl(
    _$GreetingResponseImpl _value,
    $Res Function(_$GreetingResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GreetingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? greeting = null, Object? photo = null}) {
    return _then(
      _$GreetingResponseImpl(
        greeting: null == greeting
            ? _value.greeting
            : greeting // ignore: cast_nullable_to_non_nullable
                  as Greeting,
        photo: null == photo
            ? _value.photo
            : photo // ignore: cast_nullable_to_non_nullable
                  as GreetingPhoto,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GreetingResponseImpl implements _GreetingResponse {
  const _$GreetingResponseImpl({
    required this.greeting,
    @JsonKey(name: 'topPhoto') required this.photo,
  });

  factory _$GreetingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GreetingResponseImplFromJson(json);

  @override
  final Greeting greeting;
  @override
  @JsonKey(name: 'topPhoto')
  final GreetingPhoto photo;

  @override
  String toString() {
    return 'GreetingResponse(greeting: $greeting, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreetingResponseImpl &&
            (identical(other.greeting, greeting) ||
                other.greeting == greeting) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, greeting, photo);

  /// Create a copy of GreetingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GreetingResponseImplCopyWith<_$GreetingResponseImpl> get copyWith =>
      __$$GreetingResponseImplCopyWithImpl<_$GreetingResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GreetingResponseImplToJson(this);
  }
}

abstract class _GreetingResponse implements GreetingResponse {
  const factory _GreetingResponse({
    required final Greeting greeting,
    @JsonKey(name: 'topPhoto') required final GreetingPhoto photo,
  }) = _$GreetingResponseImpl;

  factory _GreetingResponse.fromJson(Map<String, dynamic> json) =
      _$GreetingResponseImpl.fromJson;

  @override
  Greeting get greeting;
  @override
  @JsonKey(name: 'topPhoto')
  GreetingPhoto get photo;

  /// Create a copy of GreetingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GreetingResponseImplCopyWith<_$GreetingResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
