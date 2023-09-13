import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_portfolio_site/business_logic/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:my_portfolio_site/presentation/widgets/nav_bar_widget.dart';

class NavTabMobile extends StatelessWidget {
  const NavTabMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return NavBarWidget(
      leading: IconButton(
          onPressed: () {
            context.read<NavBarCubit>().scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.menu_open_outlined,
          )),
    );
  }
}
