part of 'pointer_move_cubit.dart';

@freezed
class PointerMoveState with _$PointerMoveState {
  const factory PointerMoveState(
      {required double x,
      required double y,
      required double containerWidth,
      required bool isMoving}) = _Initial;
  factory PointerMoveState.initial() =>
      const PointerMoveState(x: 0, y: 0, containerWidth: 30, isMoving: false);
}
