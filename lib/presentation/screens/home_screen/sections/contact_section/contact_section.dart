import 'package:flutter/material.dart';
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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 15, 15, 15),
          ],
        ),
      ),
      child: LayoutBuilder(builder: (context, constrains) {
        return FractionallySizedBox(
          widthFactor: constrains.maxWidth >= 1024 ? 0.8 : 1,
          child: Column(children: [
            Space.y(70),
            const SectionTitle(title: 'Contact'),
          ]),
        );
      }),
    );
  }
}
