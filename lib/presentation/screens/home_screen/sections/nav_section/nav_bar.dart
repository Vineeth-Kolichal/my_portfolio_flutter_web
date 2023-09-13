import 'package:flutter/material.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/nav_section/nav_desktop.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/nav_section/nav_tab_mobile.dart';
import 'package:my_portfolio_site/presentation/widgets/responsive.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: NavDesktop(),
      tablet: NavTabMobile(),
      mobile: NavTabMobile(),
    );
  }
}
