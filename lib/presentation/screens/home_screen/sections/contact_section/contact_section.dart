import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_site/business_logic/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:my_portfolio_site/presentation/widgets/section_title.dart';
import 'package:my_portfolio_site/presentation/widgets/space.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   // context.read<NavBarCubit>().selectSection(3);
    return Container(
      height: size.height,
      child: LayoutBuilder(builder: (context, constrains) {
        return FractionallySizedBox(
          widthFactor: constrains.maxWidth >= 1024 ? 0.8 : 1,
          child: Column(children: [
            Space.y(70),
            SectionTitle(title: 'Contact'),
          ]),
        );
      }),
      color: Color.fromARGB(255, 37, 37, 37),
    );
  }
}
