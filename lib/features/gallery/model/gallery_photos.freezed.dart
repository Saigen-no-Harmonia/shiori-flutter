// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_photos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GalleryPhotos _$GalleryPhotosFromJson(Map<String, dynamic> json) {
  return _GalleryPhotos.fromJson(json);
}

/// @nodoc
mixin _$GalleryPhotos {
  List<GalleryPhoto> get galleryPhotos => throw _privateConstructorUsedError;

  /// Serializes this GalleryPhotos to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GalleryPhotos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GalleryPhotosCopyWith<GalleryPhotos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryPhotosCopyWith<$Res> {
  factory $GalleryPhotosCopyWith(
    GalleryPhotos value,
    $Res Function(GalleryPhotos) then,
  ) = _$GalleryPhotosCopyWithImpl<$Res, GalleryPhotos>;
  @useResult
  $Res call({List<GalleryPhoto> galleryPhotos});
}

/// @nodoc
class _$GalleryPhotosCopyWithImpl<$Res, $Val extends GalleryPhotos>
    implements $GalleryPhotosCopyWith<$Res> {
  _$GalleryPhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GalleryPhotos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? galleryPhotos = null}) {
    return _then(
      _value.copyWith(
            galleryPhotos: null == galleryPhotos
                ? _value.galleryPhotos
                : galleryPhotos // ignore: cast_nullable_to_non_nullable
                      as List<GalleryPhoto>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GalleryPhotosImplCopyWith<$Res>
    implements $GalleryPhotosCopyWith<$Res> {
  factory _$$GalleryPhotosImplCopyWith(
    _$GalleryPhotosImpl value,
    $Res Function(_$GalleryPhotosImpl) then,
  ) = __$$GalleryPhotosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GalleryPhoto> galleryPhotos});
}

/// @nodoc
class __$$GalleryPhotosImplCopyWithImpl<$Res>
    extends _$GalleryPhotosCopyWithImpl<$Res, _$GalleryPhotosImpl>
    implements _$$GalleryPhotosImplCopyWith<$Res> {
  __$$GalleryPhotosImplCopyWithImpl(
    _$GalleryPhotosImpl _value,
    $Res Function(_$GalleryPhotosImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GalleryPhotos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? galleryPhotos = null}) {
    return _then(
      _$GalleryPhotosImpl(
        galleryPhotos: null == galleryPhotos
            ? _value._galleryPhotos
            : galleryPhotos // ignore: cast_nullable_to_non_nullable
                  as List<GalleryPhoto>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GalleryPhotosImpl implements _GalleryPhotos {
  const _$GalleryPhotosImpl({required final List<GalleryPhoto> galleryPhotos})
    : _galleryPhotos = galleryPhotos;

  factory _$GalleryPhotosImpl.fromJson(Map<String, dynamic> json) =>
      _$$GalleryPhotosImplFromJson(json);

  final List<GalleryPhoto> _galleryPhotos;
  @override
  List<GalleryPhoto> get galleryPhotos {
    if (_galleryPhotos is EqualUnmodifiableListView) return _galleryPhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_galleryPhotos);
  }

  @override
  String toString() {
    return 'GalleryPhotos(galleryPhotos: $galleryPhotos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryPhotosImpl &&
            const DeepCollectionEquality().equals(
              other._galleryPhotos,
              _galleryPhotos,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_galleryPhotos),
  );

  /// Create a copy of GalleryPhotos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryPhotosImplCopyWith<_$GalleryPhotosImpl> get copyWith =>
      __$$GalleryPhotosImplCopyWithImpl<_$GalleryPhotosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GalleryPhotosImplToJson(this);
  }
}

abstract class _GalleryPhotos implements GalleryPhotos {
  const factory _GalleryPhotos({
    required final List<GalleryPhoto> galleryPhotos,
  }) = _$GalleryPhotosImpl;

  factory _GalleryPhotos.fromJson(Map<String, dynamic> json) =
      _$GalleryPhotosImpl.fromJson;

  @override
  List<GalleryPhoto> get galleryPhotos;

  /// Create a copy of GalleryPhotos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryPhotosImplCopyWith<_$GalleryPhotosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
