import 'package:flutter/material.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/home_section/home_section.dart';
import 'package:my_portfolio_site/presentation/widgets/responsive.dart';
import 'package:my_portfolio_site/presentation/widgets/section_title.dart';
import 'package:my_portfolio_site/presentation/widgets/space.dart';
import 'package:my_portfolio_site/util/constants.dart';
import 'package:my_portfolio_site/util/icons.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //  height: size.height,
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
                    GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      childAspectRatio: 0.8,
                      shrinkWrap: true,
                      crossAxisCount: Responsive.isDestop(context)
                          ? 4
                          : Responsive.isTabltet(context)
                              ? 2
                              : 1,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 20.0,
                      children: List.generate(6, (index) {
                        return const Center(
                          child: ProjectContainer(),
                        );
                      }),
                    ),
                    Space.y(70),
                  ],
                ),
              ));
        },
      ),
    );
  }
}

class ProjectContainer extends StatefulWidget {
  const ProjectContainer({
    super.key,
  });

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      onTap: () {},
      child: Material(
        borderRadius: BorderRadius.circular(30),
        shadowColor: Colors.grey,
        elevation: isHover || !Responsive.isDestop(context) ? 10 : 0.0,
        child: AnimatedContainer(
          curve: Curves.fastEaseInToSlowEaseOut,
          duration: const Duration(milliseconds: 500),
          width: isHover ? 380 : 330,
          height: isHover || !Responsive.isDestop(context) ? 425 : 400,
          decoration: BoxDecoration(
            gradient: isHover
                ? null
                : const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 0, 0, 0),
                      Color.fromARGB(255, 15, 15, 15),
                    ],
                  ),
            color: !isHover ? null : Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                //  mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Project Name',
                    style: TextStyle(fontSize: 20, color: Colors.yellow),
                  ),
                  whiteDivider,
                  Space.y(20),
                  Container(
                    width: 260,
                    height: 140,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/512px-WhatsApp.svg.png?20220228223904',
                            ),
                            fit: BoxFit.cover),
                        color: const Color.fromARGB(255, 54, 54, 54),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Space.y(10),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 280),
                    child: const Text(
                      maxLines: 5,
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Visibility(
                    // visible: isHover || !Responsive.isDestop(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleButton(onTap: () {}, icon: CustomIcons.github),
                        Space.x(20),
                        CircleButton(
                            onTap: () {}, icon: CustomIcons.google_play),
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
