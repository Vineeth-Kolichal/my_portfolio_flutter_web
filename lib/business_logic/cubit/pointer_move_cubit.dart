import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pointer_move_state.dart';
part 'pointer_move_cubit.freezed.dart';

class PointerMoveCubit extends Cubit<PointerMoveState> {
  PointerMoveCubit() : super(PointerMoveState.initial());
  void setPiointerPosition(double x, double y) {
    emit(state.copyWith(x: x, y: y));
  }

  void setMoving() {
    emit(state.copyWith(isMoving: true));
    Timer(const Duration(milliseconds: 200), () {
      emit(state.copyWith(isMoving: false));
    });
  }
}
