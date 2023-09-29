import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_site/business_logic/cubit/pointer_move_cubit.dart';
import 'package:my_portfolio_site/business_logic/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/about_section/about_section.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/contact_section/contact_section.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/footer_section/footer_section.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/home_section/home_section.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/portfolio_section/portfolio_section.dart';
import 'package:my_portfolio_site/presentation/widgets/responsive.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'sections/nav_section/nav_bar.dart';
import 'sections/nav_section/nav_desktop.dart';

final ItemScrollController itemScrollController = ItemScrollController();
List<Color> colorList = [
  Colors.transparent,
  Colors.amber,
  Colors.purple,
  Colors.blue,
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        key: context.read<NavBarCubit>().scaffoldKey,
        endDrawerEnableOpenDragGesture: true,
        drawer: !Responsive.isDestop(context)
            ? Drawer(
                backgroundColor: const Color.fromARGB(115, 0, 0, 0),
                child: BlocBuilder<NavBarCubit, NavBarState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: buttonLabels.length,
                            itemBuilder: (context, index) => ListTile(
                              leading: NavTextButton(
                                label: buttonLabels[index],
                                selected: state.index == index,
                                onPressed: () {
                                  context
                                      .read<NavBarCubit>()
                                      .selectSection(index);
                                },
                              ),
                              trailing: index == 0
                                  ? IconButton(
                                      onPressed: () {
                                        context
                                            .read<NavBarCubit>()
                                            .scaffoldKey
                                            .currentState!
                                            .closeDrawer();
                                      },
                                      icon: const Icon(Icons.close))
                                  : null,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              )
            : null,
        body: Listener(
          onPointerHover: (event) {
            context
                .read<PointerMoveCubit>()
                .setPiointerPosition(event.position.dx, event.position.dy);
            context.read<PointerMoveCubit>().setMoving();
          },
          child: Stack(
            children: [
              SizedBox(
                height: size.height,
                child: Stack(
                  children: [
                    SizedBox(
                      height: size.height,
                      child: Image.asset(
                        'assets/images/bg_image.jpg',
                        width: size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              ScrollablePositionedList.builder(
                shrinkWrap: true,
                scrollOffsetListener:
                    context.read<NavBarCubit>().scrollOffsetListener,
                itemScrollController:
                    context.read<NavBarCubit>().itemScrollController,
                itemCount: sections.length,
                itemBuilder: (context, index) {
                  return sections[index];
                },
                //separatorBuilder: (context, index) => const,
              ),
              const NavBar(),
              const PointerFollowCircle(
                time: 200,
              ),
            ],
          ),
        ));
  }
}

class PointerFollowCircle extends StatelessWidget {
  const PointerFollowCircle({
    super.key,
    required this.time,
  });
  final int time;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PointerMoveCubit, PointerMoveState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: Duration(milliseconds: time),
          height: state.isMoving ? state.containerWidth : 0,
          width: state.isMoving ? state.containerWidth : 0,
          transform: Transform.translate(
                  offset: Offset(state.x - state.containerWidth / 2,
                      state.y - state.containerWidth / 2))
              .transform,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow,
          ),
        );
      },
    );
  }
}

List<Widget> sections = const [
  HomeSection(),
  AboutSection(),
  PortfolioSection(),
  ContactSection(),
  FooterSection(),
];
