import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_site/presentation/widgets/export_widgets.dart';

import 'widgets/export_about_section_widgets.dart';



class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

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
      child: LayoutBuilder(builder: (context, constraints) {
        return FractionallySizedBox(
          widthFactor: constraints.maxWidth >= 1024 ? 0.8 : 1,
          child: Column(children: [
            Space.y(70),
            const SectionTitle(title: 'About'),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Responsive.isDestop(context)
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ColumnOne(constraints: constraints),
                        Space.x(20),
                        Expanded(
                          child: ExpertiseSectionWidget(
                            constraints: constraints,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        ColumnOne(constraints: constraints),
                        Space.y(20),
                        ExpertiseSectionWidget(
                          constraints: constraints,
                        )
                      ],
                    ),
            ),
            Space.y(70),
          ]),
        );
      }),
    );
  }
}
