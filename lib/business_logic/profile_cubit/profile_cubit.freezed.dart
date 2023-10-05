// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  String get resumeLink => throw _privateConstructorUsedError;
  String get whoAmI => throw _privateConstructorUsedError;
  String get expertIn => throw _privateConstructorUsedError;
  String get familiarWith => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {String resumeLink, String whoAmI, String expertIn, String familiarWith});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resumeLink = null,
    Object? whoAmI = null,
    Object? expertIn = null,
    Object? familiarWith = null,
  }) {
    return _then(_value.copyWith(
      resumeLink: null == resumeLink
          ? _value.resumeLink
          : resumeLink // ignore: cast_nullable_to_non_nullable
              as String,
      whoAmI: null == whoAmI
          ? _value.whoAmI
          : whoAmI // ignore: cast_nullable_to_non_nullable
              as String,
      expertIn: null == expertIn
          ? _value.expertIn
          : expertIn // ignore: cast_nullable_to_non_nullable
              as String,
      familiarWith: null == familiarWith
          ? _value.familiarWith
          : familiarWith // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String resumeLink, String whoAmI, String expertIn, String familiarWith});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resumeLink = null,
    Object? whoAmI = null,
    Object? expertIn = null,
    Object? familiarWith = null,
  }) {
    return _then(_$InitialImpl(
      resumeLink: null == resumeLink
          ? _value.resumeLink
          : resumeLink // ignore: cast_nullable_to_non_nullable
              as String,
      whoAmI: null == whoAmI
          ? _value.whoAmI
          : whoAmI // ignore: cast_nullable_to_non_nullable
              as String,
      expertIn: null == expertIn
          ? _value.expertIn
          : expertIn // ignore: cast_nullable_to_non_nullable
              as String,
      familiarWith: null == familiarWith
          ? _value.familiarWith
          : familiarWith // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.resumeLink,
      required this.whoAmI,
      required this.expertIn,
      required this.familiarWith});

  @override
  final String resumeLink;
  @override
  final String whoAmI;
  @override
  final String expertIn;
  @override
  final String familiarWith;

  @override
  String toString() {
    return 'ProfileState(resumeLink: $resumeLink, whoAmI: $whoAmI, expertIn: $expertIn, familiarWith: $familiarWith)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.resumeLink, resumeLink) ||
                other.resumeLink == resumeLink) &&
            (identical(other.whoAmI, whoAmI) || other.whoAmI == whoAmI) &&
            (identical(other.expertIn, expertIn) ||
                other.expertIn == expertIn) &&
            (identical(other.familiarWith, familiarWith) ||
                other.familiarWith == familiarWith));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, resumeLink, whoAmI, expertIn, familiarWith);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements ProfileState {
  const factory _Initial(
      {required final String resumeLink,
      required final String whoAmI,
      required final String expertIn,
      required final String familiarWith}) = _$InitialImpl;

  @override
  String get resumeLink;
  @override
  String get whoAmI;
  @override
  String get expertIn;
  @override
  String get familiarWith;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
