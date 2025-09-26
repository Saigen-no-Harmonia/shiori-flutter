// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Access _$AccessFromJson(Map<String, dynamic> json) {
  return _Access.fromJson(json);
}

/// @nodoc
mixin _$Access {
  DateTime get gatheringDate => throw _privateConstructorUsedError;
  String get gatheringSpot => throw _privateConstructorUsedError;
  String get restaurantName => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurantUrl')
  String get restaurantURL => throw _privateConstructorUsedError;
  DateTime get startingDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'venueAccessPageUrl')
  String get venueURL => throw _privateConstructorUsedError;
  String get venueAddress => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;

  /// Serializes this Access to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Access
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccessCopyWith<Access> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessCopyWith<$Res> {
  factory $AccessCopyWith(Access value, $Res Function(Access) then) =
      _$AccessCopyWithImpl<$Res, Access>;
  @useResult
  $Res call({
    DateTime gatheringDate,
    String gatheringSpot,
    String restaurantName,
    @JsonKey(name: 'restaurantUrl') String restaurantURL,
    DateTime startingDate,
    @JsonKey(name: 'venueAccessPageUrl') String venueURL,
    String venueAddress,
    String latitude,
    String longitude,
  });
}

/// @nodoc
class _$AccessCopyWithImpl<$Res, $Val extends Access>
    implements $AccessCopyWith<$Res> {
  _$AccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Access
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gatheringDate = null,
    Object? gatheringSpot = null,
    Object? restaurantName = null,
    Object? restaurantURL = null,
    Object? startingDate = null,
    Object? venueURL = null,
    Object? venueAddress = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(
      _value.copyWith(
            gatheringDate: null == gatheringDate
                ? _value.gatheringDate
                : gatheringDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            gatheringSpot: null == gatheringSpot
                ? _value.gatheringSpot
                : gatheringSpot // ignore: cast_nullable_to_non_nullable
                      as String,
            restaurantName: null == restaurantName
                ? _value.restaurantName
                : restaurantName // ignore: cast_nullable_to_non_nullable
                      as String,
            restaurantURL: null == restaurantURL
                ? _value.restaurantURL
                : restaurantURL // ignore: cast_nullable_to_non_nullable
                      as String,
            startingDate: null == startingDate
                ? _value.startingDate
                : startingDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            venueURL: null == venueURL
                ? _value.venueURL
                : venueURL // ignore: cast_nullable_to_non_nullable
                      as String,
            venueAddress: null == venueAddress
                ? _value.venueAddress
                : venueAddress // ignore: cast_nullable_to_non_nullable
                      as String,
            latitude: null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as String,
            longitude: null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AccessImplCopyWith<$Res> implements $AccessCopyWith<$Res> {
  factory _$$AccessImplCopyWith(
    _$AccessImpl value,
    $Res Function(_$AccessImpl) then,
  ) = __$$AccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime gatheringDate,
    String gatheringSpot,
    String restaurantName,
    @JsonKey(name: 'restaurantUrl') String restaurantURL,
    DateTime startingDate,
    @JsonKey(name: 'venueAccessPageUrl') String venueURL,
    String venueAddress,
    String latitude,
    String longitude,
  });
}

/// @nodoc
class __$$AccessImplCopyWithImpl<$Res>
    extends _$AccessCopyWithImpl<$Res, _$AccessImpl>
    implements _$$AccessImplCopyWith<$Res> {
  __$$AccessImplCopyWithImpl(
    _$AccessImpl _value,
    $Res Function(_$AccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Access
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gatheringDate = null,
    Object? gatheringSpot = null,
    Object? restaurantName = null,
    Object? restaurantURL = null,
    Object? startingDate = null,
    Object? venueURL = null,
    Object? venueAddress = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(
      _$AccessImpl(
        gatheringDate: null == gatheringDate
            ? _value.gatheringDate
            : gatheringDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        gatheringSpot: null == gatheringSpot
            ? _value.gatheringSpot
            : gatheringSpot // ignore: cast_nullable_to_non_nullable
                  as String,
        restaurantName: null == restaurantName
            ? _value.restaurantName
            : restaurantName // ignore: cast_nullable_to_non_nullable
                  as String,
        restaurantURL: null == restaurantURL
            ? _value.restaurantURL
            : restaurantURL // ignore: cast_nullable_to_non_nullable
                  as String,
        startingDate: null == startingDate
            ? _value.startingDate
            : startingDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        venueURL: null == venueURL
            ? _value.venueURL
            : venueURL // ignore: cast_nullable_to_non_nullable
                  as String,
        venueAddress: null == venueAddress
            ? _value.venueAddress
            : venueAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as String,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessImpl implements _Access {
  const _$AccessImpl({
    required this.gatheringDate,
    required this.gatheringSpot,
    required this.restaurantName,
    @JsonKey(name: 'restaurantUrl') required this.restaurantURL,
    required this.startingDate,
    @JsonKey(name: 'venueAccessPageUrl') required this.venueURL,
    required this.venueAddress,
    required this.latitude,
    required this.longitude,
  });

  factory _$AccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessImplFromJson(json);

  @override
  final DateTime gatheringDate;
  @override
  final String gatheringSpot;
  @override
  final String restaurantName;
  @override
  @JsonKey(name: 'restaurantUrl')
  final String restaurantURL;
  @override
  final DateTime startingDate;
  @override
  @JsonKey(name: 'venueAccessPageUrl')
  final String venueURL;
  @override
  final String venueAddress;
  @override
  final String latitude;
  @override
  final String longitude;

  @override
  String toString() {
    return 'Access(gatheringDate: $gatheringDate, gatheringSpot: $gatheringSpot, restaurantName: $restaurantName, restaurantURL: $restaurantURL, startingDate: $startingDate, venueURL: $venueURL, venueAddress: $venueAddress, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessImpl &&
            (identical(other.gatheringDate, gatheringDate) ||
                other.gatheringDate == gatheringDate) &&
            (identical(other.gatheringSpot, gatheringSpot) ||
                other.gatheringSpot == gatheringSpot) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.restaurantURL, restaurantURL) ||
                other.restaurantURL == restaurantURL) &&
            (identical(other.startingDate, startingDate) ||
                other.startingDate == startingDate) &&
            (identical(other.venueURL, venueURL) ||
                other.venueURL == venueURL) &&
            (identical(other.venueAddress, venueAddress) ||
                other.venueAddress == venueAddress) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    gatheringDate,
    gatheringSpot,
    restaurantName,
    restaurantURL,
    startingDate,
    venueURL,
    venueAddress,
    latitude,
    longitude,
  );

  /// Create a copy of Access
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessImplCopyWith<_$AccessImpl> get copyWith =>
      __$$AccessImplCopyWithImpl<_$AccessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessImplToJson(this);
  }
}

abstract class _Access implements Access {
  const factory _Access({
    required final DateTime gatheringDate,
    required final String gatheringSpot,
    required final String restaurantName,
    @JsonKey(name: 'restaurantUrl') required final String restaurantURL,
    required final DateTime startingDate,
    @JsonKey(name: 'venueAccessPageUrl') required final String venueURL,
    required final String venueAddress,
    required final String latitude,
    required final String longitude,
  }) = _$AccessImpl;

  factory _Access.fromJson(Map<String, dynamic> json) = _$AccessImpl.fromJson;

  @override
  DateTime get gatheringDate;
  @override
  String get gatheringSpot;
  @override
  String get restaurantName;
  @override
  @JsonKey(name: 'restaurantUrl')
  String get restaurantURL;
  @override
  DateTime get startingDate;
  @override
  @JsonKey(name: 'venueAccessPageUrl')
  String get venueURL;
  @override
  String get venueAddress;
  @override
  String get latitude;
  @override
  String get longitude;

  /// Create a copy of Access
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccessImplCopyWith<_$AccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
