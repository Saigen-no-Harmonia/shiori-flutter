// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'greeting_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GreetingPhoto _$GreetingPhotoFromJson(Map<String, dynamic> json) {
  return _GreetingPhoto.fromJson(json);
}

/// @nodoc
mixin _$GreetingPhoto {
  @JsonKey(name: 'photoUrl')
  String get url => throw _privateConstructorUsedError;

  /// Serializes this GreetingPhoto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GreetingPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GreetingPhotoCopyWith<GreetingPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GreetingPhotoCopyWith<$Res> {
  factory $GreetingPhotoCopyWith(
    GreetingPhoto value,
    $Res Function(GreetingPhoto) then,
  ) = _$GreetingPhotoCopyWithImpl<$Res, GreetingPhoto>;
  @useResult
  $Res call({@JsonKey(name: 'photoUrl') String url});
}

/// @nodoc
class _$GreetingPhotoCopyWithImpl<$Res, $Val extends GreetingPhoto>
    implements $GreetingPhotoCopyWith<$Res> {
  _$GreetingPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GreetingPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null}) {
    return _then(
      _value.copyWith(
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GreetingPhotoImplCopyWith<$Res>
    implements $GreetingPhotoCopyWith<$Res> {
  factory _$$GreetingPhotoImplCopyWith(
    _$GreetingPhotoImpl value,
    $Res Function(_$GreetingPhotoImpl) then,
  ) = __$$GreetingPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'photoUrl') String url});
}

/// @nodoc
class __$$GreetingPhotoImplCopyWithImpl<$Res>
    extends _$GreetingPhotoCopyWithImpl<$Res, _$GreetingPhotoImpl>
    implements _$$GreetingPhotoImplCopyWith<$Res> {
  __$$GreetingPhotoImplCopyWithImpl(
    _$GreetingPhotoImpl _value,
    $Res Function(_$GreetingPhotoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GreetingPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null}) {
    return _then(
      _$GreetingPhotoImpl(
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GreetingPhotoImpl implements _GreetingPhoto {
  const _$GreetingPhotoImpl({@JsonKey(name: 'photoUrl') required this.url});

  factory _$GreetingPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GreetingPhotoImplFromJson(json);

  @override
  @JsonKey(name: 'photoUrl')
  final String url;

  @override
  String toString() {
    return 'GreetingPhoto(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreetingPhotoImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of GreetingPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GreetingPhotoImplCopyWith<_$GreetingPhotoImpl> get copyWith =>
      __$$GreetingPhotoImplCopyWithImpl<_$GreetingPhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GreetingPhotoImplToJson(this);
  }
}

abstract class _GreetingPhoto implements GreetingPhoto {
  const factory _GreetingPhoto({
    @JsonKey(name: 'photoUrl') required final String url,
  }) = _$GreetingPhotoImpl;

  factory _GreetingPhoto.fromJson(Map<String, dynamic> json) =
      _$GreetingPhotoImpl.fromJson;

  @override
  @JsonKey(name: 'photoUrl')
  String get url;

  /// Create a copy of GreetingPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GreetingPhotoImplCopyWith<_$GreetingPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
