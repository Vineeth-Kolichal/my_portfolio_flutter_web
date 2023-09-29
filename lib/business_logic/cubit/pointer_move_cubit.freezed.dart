// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pointer_move_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PointerMoveState {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get containerWidth => throw _privateConstructorUsedError;
  bool get isMoving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PointerMoveStateCopyWith<PointerMoveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointerMoveStateCopyWith<$Res> {
  factory $PointerMoveStateCopyWith(
          PointerMoveState value, $Res Function(PointerMoveState) then) =
      _$PointerMoveStateCopyWithImpl<$Res, PointerMoveState>;
  @useResult
  $Res call({double x, double y, double containerWidth, bool isMoving});
}

/// @nodoc
class _$PointerMoveStateCopyWithImpl<$Res, $Val extends PointerMoveState>
    implements $PointerMoveStateCopyWith<$Res> {
  _$PointerMoveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? containerWidth = null,
    Object? isMoving = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      containerWidth: null == containerWidth
          ? _value.containerWidth
          : containerWidth // ignore: cast_nullable_to_non_nullable
              as double,
      isMoving: null == isMoving
          ? _value.isMoving
          : isMoving // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $PointerMoveStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y, double containerWidth, bool isMoving});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PointerMoveStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? containerWidth = null,
    Object? isMoving = null,
  }) {
    return _then(_$_Initial(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      containerWidth: null == containerWidth
          ? _value.containerWidth
          : containerWidth // ignore: cast_nullable_to_non_nullable
              as double,
      isMoving: null == isMoving
          ? _value.isMoving
          : isMoving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.x,
      required this.y,
      required this.containerWidth,
      required this.isMoving});

  @override
  final double x;
  @override
  final double y;
  @override
  final double containerWidth;
  @override
  final bool isMoving;

  @override
  String toString() {
    return 'PointerMoveState(x: $x, y: $y, containerWidth: $containerWidth, isMoving: $isMoving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.containerWidth, containerWidth) ||
                other.containerWidth == containerWidth) &&
            (identical(other.isMoving, isMoving) ||
                other.isMoving == isMoving));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x, y, containerWidth, isMoving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements PointerMoveState {
  const factory _Initial(
      {required final double x,
      required final double y,
      required final double containerWidth,
      required final bool isMoving}) = _$_Initial;

  @override
  double get x;
  @override
  double get y;
  @override
  double get containerWidth;
  @override
  bool get isMoving;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
