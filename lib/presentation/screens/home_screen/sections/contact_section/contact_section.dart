import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_site/presentation/widgets/responsive.dart';
import 'package:my_portfolio_site/presentation/widgets/section_title.dart';
import 'package:my_portfolio_site/presentation/widgets/space.dart';

import 'widgets/export_contact_widgets.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Container(
      decoration: const BoxDecoration(
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
            const SectionTitle(title: 'Contact Me'),
            Space.y(20),
            Responsive(
              desktop: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContactDetailsAndLottie(
                    width: (constrains.maxWidth * 0.7) / 2,
                  ),
                  MessageForm(
                    width: (constrains.maxWidth * 0.7) / 2,
                  )
                ],
              ),
              mobile: Column(
                children: [
                  ContactDetailsAndLottie(
                    width: constrains.maxWidth * 0.95,
                  ),
                  MessageForm(
                    width: constrains.maxWidth * 0.95,
                  )
                ],
              ),
            ),
          ]),
        );
      }),
    );
  }
}
