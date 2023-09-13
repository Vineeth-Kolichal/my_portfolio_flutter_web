part of 'nav_bar_cubit.dart';

@freezed
class NavBarState with _$NavBarState {
  const factory NavBarState({required int index}) = _Initial;
  factory NavBarState.initial() => NavBarState(index: 0);
}
