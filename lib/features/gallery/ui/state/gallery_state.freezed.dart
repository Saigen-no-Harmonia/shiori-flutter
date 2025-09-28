// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GalleryState _$GalleryStateFromJson(Map<String, dynamic> json) {
  return _GalleryState.fromJson(json);
}

/// @nodoc
mixin _$GalleryState {
  List<GalleryPhoto> get photos => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  bool get isAllLoaded => throw _privateConstructorUsedError;
  bool get isPagingLoading => throw _privateConstructorUsedError;
  bool get isPagingError => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this GalleryState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GalleryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GalleryStateCopyWith<GalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryStateCopyWith<$Res> {
  factory $GalleryStateCopyWith(
    GalleryState value,
    $Res Function(GalleryState) then,
  ) = _$GalleryStateCopyWithImpl<$Res, GalleryState>;
  @useResult
  $Res call({
    List<GalleryPhoto> photos,
    int offset,
    bool isAllLoaded,
    bool isPagingLoading,
    bool isPagingError,
    int limit,
  });
}

/// @nodoc
class _$GalleryStateCopyWithImpl<$Res, $Val extends GalleryState>
    implements $GalleryStateCopyWith<$Res> {
  _$GalleryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GalleryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? offset = null,
    Object? isAllLoaded = null,
    Object? isPagingLoading = null,
    Object? isPagingError = null,
    Object? limit = null,
  }) {
    return _then(
      _value.copyWith(
            photos: null == photos
                ? _value.photos
                : photos // ignore: cast_nullable_to_non_nullable
                      as List<GalleryPhoto>,
            offset: null == offset
                ? _value.offset
                : offset // ignore: cast_nullable_to_non_nullable
                      as int,
            isAllLoaded: null == isAllLoaded
                ? _value.isAllLoaded
                : isAllLoaded // ignore: cast_nullable_to_non_nullable
                      as bool,
            isPagingLoading: null == isPagingLoading
                ? _value.isPagingLoading
                : isPagingLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            isPagingError: null == isPagingError
                ? _value.isPagingError
                : isPagingError // ignore: cast_nullable_to_non_nullable
                      as bool,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GalleryStateImplCopyWith<$Res>
    implements $GalleryStateCopyWith<$Res> {
  factory _$$GalleryStateImplCopyWith(
    _$GalleryStateImpl value,
    $Res Function(_$GalleryStateImpl) then,
  ) = __$$GalleryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<GalleryPhoto> photos,
    int offset,
    bool isAllLoaded,
    bool isPagingLoading,
    bool isPagingError,
    int limit,
  });
}

/// @nodoc
class __$$GalleryStateImplCopyWithImpl<$Res>
    extends _$GalleryStateCopyWithImpl<$Res, _$GalleryStateImpl>
    implements _$$GalleryStateImplCopyWith<$Res> {
  __$$GalleryStateImplCopyWithImpl(
    _$GalleryStateImpl _value,
    $Res Function(_$GalleryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GalleryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? offset = null,
    Object? isAllLoaded = null,
    Object? isPagingLoading = null,
    Object? isPagingError = null,
    Object? limit = null,
  }) {
    return _then(
      _$GalleryStateImpl(
        photos: null == photos
            ? _value._photos
            : photos // ignore: cast_nullable_to_non_nullable
                  as List<GalleryPhoto>,
        offset: null == offset
            ? _value.offset
            : offset // ignore: cast_nullable_to_non_nullable
                  as int,
        isAllLoaded: null == isAllLoaded
            ? _value.isAllLoaded
            : isAllLoaded // ignore: cast_nullable_to_non_nullable
                  as bool,
        isPagingLoading: null == isPagingLoading
            ? _value.isPagingLoading
            : isPagingLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        isPagingError: null == isPagingError
            ? _value.isPagingError
            : isPagingError // ignore: cast_nullable_to_non_nullable
                  as bool,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GalleryStateImpl implements _GalleryState {
  const _$GalleryStateImpl({
    final List<GalleryPhoto> photos = const [],
    this.offset = 0,
    this.isAllLoaded = false,
    this.isPagingLoading = false,
    this.isPagingError = false,
    this.limit = 20,
  }) : _photos = photos;

  factory _$GalleryStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GalleryStateImplFromJson(json);

  final List<GalleryPhoto> _photos;
  @override
  @JsonKey()
  List<GalleryPhoto> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final bool isAllLoaded;
  @override
  @JsonKey()
  final bool isPagingLoading;
  @override
  @JsonKey()
  final bool isPagingError;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'GalleryState(photos: $photos, offset: $offset, isAllLoaded: $isAllLoaded, isPagingLoading: $isPagingLoading, isPagingError: $isPagingError, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryStateImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.isAllLoaded, isAllLoaded) ||
                other.isAllLoaded == isAllLoaded) &&
            (identical(other.isPagingLoading, isPagingLoading) ||
                other.isPagingLoading == isPagingLoading) &&
            (identical(other.isPagingError, isPagingError) ||
                other.isPagingError == isPagingError) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_photos),
    offset,
    isAllLoaded,
    isPagingLoading,
    isPagingError,
    limit,
  );

  /// Create a copy of GalleryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryStateImplCopyWith<_$GalleryStateImpl> get copyWith =>
      __$$GalleryStateImplCopyWithImpl<_$GalleryStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GalleryStateImplToJson(this);
  }
}

abstract class _GalleryState implements GalleryState {
  const factory _GalleryState({
    final List<GalleryPhoto> photos,
    final int offset,
    final bool isAllLoaded,
    final bool isPagingLoading,
    final bool isPagingError,
    final int limit,
  }) = _$GalleryStateImpl;

  factory _GalleryState.fromJson(Map<String, dynamic> json) =
      _$GalleryStateImpl.fromJson;

  @override
  List<GalleryPhoto> get photos;
  @override
  int get offset;
  @override
  bool get isAllLoaded;
  @override
  bool get isPagingLoading;
  @override
  bool get isPagingError;
  @override
  int get limit;

  /// Create a copy of GalleryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryStateImplCopyWith<_$GalleryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
