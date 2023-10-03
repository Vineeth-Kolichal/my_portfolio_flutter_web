import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_site/business_logic/export_cubit.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/about_section/about_section.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/contact_section/contact_section.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/footer_section/footer_section.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/home_section/home_section.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/portfolio_section/portfolio_section.dart';
import 'package:my_portfolio_site/presentation/widgets/responsive.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'sections/nav_section/nav_bar.dart';
import 'sections/nav_section/nav_desktop.dart';

ValueNotifier<double> positionNotifier = ValueNotifier(0.0);

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
    context.read<ProjectSectionCubit>().getProjects();
    Size size = MediaQuery.of(context).size;
    Timer(const Duration(milliseconds: 1500), () {
      positionNotifier.value = -(size.height / 2);
    });

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
              BlackHalfSection(size: size, position: 1),
              BlackHalfSection(size: size, position: 2 * -1),
            ],
          ),
        ));
  }
}

class BlackHalfSection extends StatelessWidget {
  const BlackHalfSection({
    super.key,
    required this.size,
    required this.position,
  });

  final Size size;
  final int position;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: position != 1 ? 0 : null,
      top: position == 1 ? 0 : null,
      child: ValueListenableBuilder(
          valueListenable: positionNotifier,
          builder: (context, value, _) {
            return AnimatedContainer(
                curve: Curves.fastEaseInToSlowEaseOut,
                duration: const Duration(milliseconds: 1000),
                transform:
                    Transform.translate(offset: Offset(0, value * position))
                        .transform,
                height: (size.height / 2),
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.yellow, width: position == 1 ? 0.5 : 0),
                      top: BorderSide(
                          color: Colors.yellow,
                          width: position != 1 ? 0.5 : 0)),
                ));
          }),
    );
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
