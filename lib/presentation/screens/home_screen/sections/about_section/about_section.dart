import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_portfolio_site/presentation/widgets/export_widgets.dart';
import 'package:my_portfolio_site/util/colors.dart';
import 'package:my_portfolio_site/util/constants.dart';

String skills =
    "Flutter, Dart, BloC, Provider, GetX, REST API Integration, Firebase, Hive, SQFLite, Git, GitHub, MVVM, MVC, BLoC Architecture";
String familiar =
    "Firebase FCM, Google map, HTML, CSS, JavaScript, Bootstrap, Java, C++,C Data Structure,Figma, DDD Architecture";

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // constraints: BoxConstraints(
      //   minHeight: size.width,
      // ),
      // height: size.height,
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

class ExpertiseSectionWidget extends StatelessWidget {
  const ExpertiseSectionWidget({
    super.key,
    required this.constraints,
  });
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.isDestop(context) ? null : constraints.maxWidth * 0.9,
      child: ElevatedBoxWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Expertise',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
            yellowDivider,
            Space.y(20),
            const ExpertiseItems(
              icon: Icons.android_rounded,
              heading: 'Android App development',
              content:
                  'Experienced Flutter developer skilled in all aspects of Android app development, from design to implementation, with a strong focus on quality and timely delivery. ',
            ),
            const ExpertiseItems(
              icon: Icons.apple,
              heading: 'iOS App development',
              content:
                  'Expert in designing, developing, and delivering high-quality iOS apps on time and within budget. Expertise in building user-friendly and visually appealing interfaces, as well as optimizing performance and scalability. ',
            ),
            const ExpertiseItems(
              icon: Icons.web,
              heading: 'Web designing',
              content:
                  'Expert in developing beautiful and engaging websites using Flutter, HTML, CSS, and Bootstrap. Proven ability to create user-friendly and responsive websites that meet the needs of a variety of clients. ',
            ),
            const ExpertiseItems(
              icon: CupertinoIcons.globe,
              heading: 'Web development',
              content:
                  'Expert in developing beautiful and engaging websites using Flutter, HTML, CSS, and Bootstrap. Proven ability to create user-friendly and responsive websites that meet the needs of a variety of clients. ',
            ),
          ],
        ),
      ),
    );
  }
}

class ExpertiseItems extends StatelessWidget {
  const ExpertiseItems({
    super.key,
    required this.heading,
    required this.content,
    required this.icon,
  });
  final String heading;
  final String content;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.yellow,
            size: 70,
          ),
          Space.x(10),
          const SizedBox(height: 70, child: VerticalDivider()),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: const TextStyle(fontSize: 20, color: Colors.yellow),
                ),
                Text(
                  content,
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColumnOne extends StatelessWidget {
  const ColumnOne({
    super.key,
    required this.constraints,
  });
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.isDestop(context)
          ? (constraints.maxWidth * 0.8) / 3.5
          : constraints.maxWidth * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedBoxWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Who am I ?',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                  yellowDivider,
                  Space.y(10),
                  const Text(
                    "I am a self-directed Flutter Developer with one year of hands-on experience. I have a bachelor's degree in computer science from the Kannur University, Kerala. I am proficient in Flutter, Dart, and Android development. I am also familiar with other programming languages such as Java, C, and C++.,",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ],
              ),
            ),
            Space.y(30),
            ElevatedBoxWidget(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Skills',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                yellowDivider,
                Space.y(10),
                const Text('Expert-in',
                    style: TextStyle(fontSize: 20, color: Colors.yellow)),
                Text(
                  skills,
                  style: const TextStyle(fontSize: 16, height: 1.7),
                ),
                Space.y(10),
                const Text('Familiar-with',
                    style: TextStyle(fontSize: 20, color: Colors.yellow)),
                Text(
                  familiar,
                  style: const TextStyle(fontSize: 16, height: 1.7),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class AboutItems extends StatelessWidget {
  const AboutItems({
    super.key,
    required this.constraints,
  });
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      width: (constraints.maxWidth * 0.8) / 3,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Skills',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
            Divider(
              height: 2,
              color: Colors.yellow,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  text: "Expert in : ",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      height: 1.75),
                  children: [
                    TextSpan(
                        text: skills,
                        style: TextStyle(
                            height: 1.75,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white))
                  ]),
            ),
            Space.y(10),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  text: "Familiar with : ",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      height: 1.75),
                  children: [
                    TextSpan(
                        text: familiar,
                        style: TextStyle(
                            height: 1.75,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white))
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
