// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Family _$FamilyFromJson(Map<String, dynamic> json) {
  return _Family.fromJson(json);
}

/// @nodoc
mixin _$Family {
  @JsonKey(name: 'ieId')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ieName')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'presenterProfile')
  PresenterProfile get presenter => throw _privateConstructorUsedError;
  @JsonKey(name: 'participantProfiles')
  List<ParticipantProfile> get participants =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'nekoProfiles')
  List<CatProfile>? get cats => throw _privateConstructorUsedError;

  /// Serializes this Family to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FamilyCopyWith<Family> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyCopyWith<$Res> {
  factory $FamilyCopyWith(Family value, $Res Function(Family) then) =
      _$FamilyCopyWithImpl<$Res, Family>;
  @useResult
  $Res call({
    @JsonKey(name: 'ieId') String id,
    @JsonKey(name: 'ieName') String name,
    @JsonKey(name: 'presenterProfile') PresenterProfile presenter,
    @JsonKey(name: 'participantProfiles') List<ParticipantProfile> participants,
    @JsonKey(name: 'nekoProfiles') List<CatProfile>? cats,
  });

  $PresenterProfileCopyWith<$Res> get presenter;
}

/// @nodoc
class _$FamilyCopyWithImpl<$Res, $Val extends Family>
    implements $FamilyCopyWith<$Res> {
  _$FamilyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? presenter = null,
    Object? participants = null,
    Object? cats = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            presenter: null == presenter
                ? _value.presenter
                : presenter // ignore: cast_nullable_to_non_nullable
                      as PresenterProfile,
            participants: null == participants
                ? _value.participants
                : participants // ignore: cast_nullable_to_non_nullable
                      as List<ParticipantProfile>,
            cats: freezed == cats
                ? _value.cats
                : cats // ignore: cast_nullable_to_non_nullable
                      as List<CatProfile>?,
          )
          as $Val,
    );
  }

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PresenterProfileCopyWith<$Res> get presenter {
    return $PresenterProfileCopyWith<$Res>(_value.presenter, (value) {
      return _then(_value.copyWith(presenter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FamilyImplCopyWith<$Res> implements $FamilyCopyWith<$Res> {
  factory _$$FamilyImplCopyWith(
    _$FamilyImpl value,
    $Res Function(_$FamilyImpl) then,
  ) = __$$FamilyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'ieId') String id,
    @JsonKey(name: 'ieName') String name,
    @JsonKey(name: 'presenterProfile') PresenterProfile presenter,
    @JsonKey(name: 'participantProfiles') List<ParticipantProfile> participants,
    @JsonKey(name: 'nekoProfiles') List<CatProfile>? cats,
  });

  @override
  $PresenterProfileCopyWith<$Res> get presenter;
}

/// @nodoc
class __$$FamilyImplCopyWithImpl<$Res>
    extends _$FamilyCopyWithImpl<$Res, _$FamilyImpl>
    implements _$$FamilyImplCopyWith<$Res> {
  __$$FamilyImplCopyWithImpl(
    _$FamilyImpl _value,
    $Res Function(_$FamilyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? presenter = null,
    Object? participants = null,
    Object? cats = freezed,
  }) {
    return _then(
      _$FamilyImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        presenter: null == presenter
            ? _value.presenter
            : presenter // ignore: cast_nullable_to_non_nullable
                  as PresenterProfile,
        participants: null == participants
            ? _value._participants
            : participants // ignore: cast_nullable_to_non_nullable
                  as List<ParticipantProfile>,
        cats: freezed == cats
            ? _value._cats
            : cats // ignore: cast_nullable_to_non_nullable
                  as List<CatProfile>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyImpl implements _Family {
  const _$FamilyImpl({
    @JsonKey(name: 'ieId') required this.id,
    @JsonKey(name: 'ieName') required this.name,
    @JsonKey(name: 'presenterProfile') required this.presenter,
    @JsonKey(name: 'participantProfiles')
    required final List<ParticipantProfile> participants,
    @JsonKey(name: 'nekoProfiles') final List<CatProfile>? cats,
  }) : _participants = participants,
       _cats = cats;

  factory _$FamilyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyImplFromJson(json);

  @override
  @JsonKey(name: 'ieId')
  final String id;
  @override
  @JsonKey(name: 'ieName')
  final String name;
  @override
  @JsonKey(name: 'presenterProfile')
  final PresenterProfile presenter;
  final List<ParticipantProfile> _participants;
  @override
  @JsonKey(name: 'participantProfiles')
  List<ParticipantProfile> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<CatProfile>? _cats;
  @override
  @JsonKey(name: 'nekoProfiles')
  List<CatProfile>? get cats {
    final value = _cats;
    if (value == null) return null;
    if (_cats is EqualUnmodifiableListView) return _cats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Family(id: $id, name: $name, presenter: $presenter, participants: $participants, cats: $cats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.presenter, presenter) ||
                other.presenter == presenter) &&
            const DeepCollectionEquality().equals(
              other._participants,
              _participants,
            ) &&
            const DeepCollectionEquality().equals(other._cats, _cats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    presenter,
    const DeepCollectionEquality().hash(_participants),
    const DeepCollectionEquality().hash(_cats),
  );

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyImplCopyWith<_$FamilyImpl> get copyWith =>
      __$$FamilyImplCopyWithImpl<_$FamilyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyImplToJson(this);
  }
}

abstract class _Family implements Family {
  const factory _Family({
    @JsonKey(name: 'ieId') required final String id,
    @JsonKey(name: 'ieName') required final String name,
    @JsonKey(name: 'presenterProfile')
    required final PresenterProfile presenter,
    @JsonKey(name: 'participantProfiles')
    required final List<ParticipantProfile> participants,
    @JsonKey(name: 'nekoProfiles') final List<CatProfile>? cats,
  }) = _$FamilyImpl;

  factory _Family.fromJson(Map<String, dynamic> json) = _$FamilyImpl.fromJson;

  @override
  @JsonKey(name: 'ieId')
  String get id;
  @override
  @JsonKey(name: 'ieName')
  String get name;
  @override
  @JsonKey(name: 'presenterProfile')
  PresenterProfile get presenter;
  @override
  @JsonKey(name: 'participantProfiles')
  List<ParticipantProfile> get participants;
  @override
  @JsonKey(name: 'nekoProfiles')
  List<CatProfile>? get cats;

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FamilyImplCopyWith<_$FamilyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
