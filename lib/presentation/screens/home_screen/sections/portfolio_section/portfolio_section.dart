import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_site/business_logic/export_cubit.dart';
import 'package:my_portfolio_site/presentation/widgets/export_widgets.dart';

import 'widgets/project_container.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 15, 15, 15),
            Color.fromARGB(255, 0, 0, 0)
          ],
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return FractionallySizedBox(
              widthFactor: constraints.maxWidth >= 1024 ? 0.8 : 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Space.y(70),
                    const SectionTitle(title: 'Projects'),
                    Space.y(20),
                    BlocBuilder<ProjectSectionCubit, ProjectSectionState>(
                      builder: (context, state) {
                        return GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          childAspectRatio: ((constraints.maxWidth > 1024) &&
                                  (constraints.maxWidth < 1400))
                              ? 0.75
                              : 0.8,
                          shrinkWrap: true,
                          crossAxisCount: gridCount(constraints),
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 20.0,
                          children:
                              List.generate(state.projectList.length, (index) {
                            return Center(
                              child: ProjectContainer(
                                projectModel: state.projectList[index],
                              ),
                            );
                          }),
                        );
                      },
                    ),
                    Space.y(70),
                  ],
                ),
              ));
        },
      ),
    );
  }

  int gridCount(BoxConstraints constraints) {
    if (constraints.maxWidth > 1400) {
      return 4;
    } else if ((constraints.maxWidth > 1024) &&
        (constraints.maxWidth <= 1400)) {
      return 3;
    } else if ((constraints.maxWidth > 500) && (constraints.maxWidth <= 1024)) {
      return 2;
    } else {
      return 1;
    }
  }
}
