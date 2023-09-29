
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

part 'nav_bar_state.dart';
part 'nav_bar_cubit.freezed.dart';

class NavBarCubit extends Cubit<NavBarState> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final ItemScrollController itemScrollController = ItemScrollController();
  ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();

  NavBarCubit() : super(NavBarState.initial());

  void selectSection(int index) {
    itemScrollController.scrollTo(
      index: index,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
      alignment: 0,
    );
    emitIndexState(index);
  }

  void emitIndexState(int index) {
    emit(state.copyWith(index: index));
  }
}
