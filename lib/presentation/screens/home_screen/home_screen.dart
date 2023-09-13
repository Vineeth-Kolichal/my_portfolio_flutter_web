import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_site/business_logic/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/about_section/about_section.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/contact_section/contact_section.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/footer_section/footer_section.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/home_section/home_section.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/portfolio_section/portfolio_section.dart';
import 'package:my_portfolio_site/presentation/widgets/responsive.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'sections/nav_section/nav_bar.dart';

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
        drawer: !Responsive.isDestop(context) ? const Drawer() : null,
        body: Stack(
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
              itemScrollController:
                  context.read<NavBarCubit>().itemScrollController,
              itemCount: sections.length,
              itemBuilder: (context, index) {
                return sections[index];
              },
              //separatorBuilder: (context, index) => const,
            ),
            const NavBar()
          ],
        ));
  }
}

List<Widget> sections = const [
  HomeSection(),
  AboutSection(),
  PortfolioSection(),
  ContactSection(),
  FooterSection(),
];