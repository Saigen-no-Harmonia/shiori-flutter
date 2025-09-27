// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CatProfile _$CatProfileFromJson(Map<String, dynamic> json) {
  return _CatProfile.fromJson(json);
}

/// @nodoc
mixin _$CatProfile {
  String get id => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get likeFood => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'photoUrl')
  String get photoURL => throw _privateConstructorUsedError;
  String get temperament => throw _privateConstructorUsedError;

  /// Serializes this CatProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatProfileCopyWith<CatProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatProfileCopyWith<$Res> {
  factory $CatProfileCopyWith(
    CatProfile value,
    $Res Function(CatProfile) then,
  ) = _$CatProfileCopyWithImpl<$Res, CatProfile>;
  @useResult
  $Res call({
    String id,
    int age,
    String likeFood,
    String name,
    @JsonKey(name: 'photoUrl') String photoURL,
    String temperament,
  });
}

/// @nodoc
class _$CatProfileCopyWithImpl<$Res, $Val extends CatProfile>
    implements $CatProfileCopyWith<$Res> {
  _$CatProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? age = null,
    Object? likeFood = null,
    Object? name = null,
    Object? photoURL = null,
    Object? temperament = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            age: null == age
                ? _value.age
                : age // ignore: cast_nullable_to_non_nullable
                      as int,
            likeFood: null == likeFood
                ? _value.likeFood
                : likeFood // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            photoURL: null == photoURL
                ? _value.photoURL
                : photoURL // ignore: cast_nullable_to_non_nullable
                      as String,
            temperament: null == temperament
                ? _value.temperament
                : temperament // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CatProfileImplCopyWith<$Res>
    implements $CatProfileCopyWith<$Res> {
  factory _$$CatProfileImplCopyWith(
    _$CatProfileImpl value,
    $Res Function(_$CatProfileImpl) then,
  ) = __$$CatProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    int age,
    String likeFood,
    String name,
    @JsonKey(name: 'photoUrl') String photoURL,
    String temperament,
  });
}

/// @nodoc
class __$$CatProfileImplCopyWithImpl<$Res>
    extends _$CatProfileCopyWithImpl<$Res, _$CatProfileImpl>
    implements _$$CatProfileImplCopyWith<$Res> {
  __$$CatProfileImplCopyWithImpl(
    _$CatProfileImpl _value,
    $Res Function(_$CatProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CatProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? age = null,
    Object? likeFood = null,
    Object? name = null,
    Object? photoURL = null,
    Object? temperament = null,
  }) {
    return _then(
      _$CatProfileImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        age: null == age
            ? _value.age
            : age // ignore: cast_nullable_to_non_nullable
                  as int,
        likeFood: null == likeFood
            ? _value.likeFood
            : likeFood // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        photoURL: null == photoURL
            ? _value.photoURL
            : photoURL // ignore: cast_nullable_to_non_nullable
                  as String,
        temperament: null == temperament
            ? _value.temperament
            : temperament // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CatProfileImpl implements _CatProfile {
  const _$CatProfileImpl({
    required this.id,
    required this.age,
    required this.likeFood,
    required this.name,
    @JsonKey(name: 'photoUrl') required this.photoURL,
    required this.temperament,
  });

  factory _$CatProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatProfileImplFromJson(json);

  @override
  final String id;
  @override
  final int age;
  @override
  final String likeFood;
  @override
  final String name;
  @override
  @JsonKey(name: 'photoUrl')
  final String photoURL;
  @override
  final String temperament;

  @override
  String toString() {
    return 'CatProfile(id: $id, age: $age, likeFood: $likeFood, name: $name, photoURL: $photoURL, temperament: $temperament)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.likeFood, likeFood) ||
                other.likeFood == likeFood) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            (identical(other.temperament, temperament) ||
                other.temperament == temperament));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, age, likeFood, name, photoURL, temperament);

  /// Create a copy of CatProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatProfileImplCopyWith<_$CatProfileImpl> get copyWith =>
      __$$CatProfileImplCopyWithImpl<_$CatProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatProfileImplToJson(this);
  }
}

abstract class _CatProfile implements CatProfile {
  const factory _CatProfile({
    required final String id,
    required final int age,
    required final String likeFood,
    required final String name,
    @JsonKey(name: 'photoUrl') required final String photoURL,
    required final String temperament,
  }) = _$CatProfileImpl;

  factory _CatProfile.fromJson(Map<String, dynamic> json) =
      _$CatProfileImpl.fromJson;

  @override
  String get id;
  @override
  int get age;
  @override
  String get likeFood;
  @override
  String get name;
  @override
  @JsonKey(name: 'photoUrl')
  String get photoURL;
  @override
  String get temperament;

  /// Create a copy of CatProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatProfileImplCopyWith<_$CatProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
