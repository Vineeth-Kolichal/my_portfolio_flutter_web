// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_message_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendMessageState {
  bool? get isSending => throw _privateConstructorUsedError;
  bool? get isSend => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendMessageStateCopyWith<SendMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageStateCopyWith<$Res> {
  factory $SendMessageStateCopyWith(
          SendMessageState value, $Res Function(SendMessageState) then) =
      _$SendMessageStateCopyWithImpl<$Res, SendMessageState>;
  @useResult
  $Res call({bool? isSending, bool? isSend});
}

/// @nodoc
class _$SendMessageStateCopyWithImpl<$Res, $Val extends SendMessageState>
    implements $SendMessageStateCopyWith<$Res> {
  _$SendMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSending = freezed,
    Object? isSend = freezed,
  }) {
    return _then(_value.copyWith(
      isSending: freezed == isSending
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSend: freezed == isSend
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SendMessageStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isSending, bool? isSend});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SendMessageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSending = freezed,
    Object? isSend = freezed,
  }) {
    return _then(_$InitialImpl(
      isSending: freezed == isSending
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSend: freezed == isSend
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.isSending, required this.isSend});

  @override
  final bool? isSending;
  @override
  final bool? isSend;

  @override
  String toString() {
    return 'SendMessageState(isSending: $isSending, isSend: $isSend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isSending, isSending) ||
                other.isSending == isSending) &&
            (identical(other.isSend, isSend) || other.isSend == isSend));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSending, isSend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements SendMessageState {
  const factory _Initial(
      {required final bool? isSending,
      required final bool? isSend}) = _$InitialImpl;

  @override
  bool? get isSending;
  @override
  bool? get isSend;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
