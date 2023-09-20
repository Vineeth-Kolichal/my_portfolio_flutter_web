import 'package:flutter/material.dart';
import 'package:my_portfolio_site/presentation/widgets/responsive.dart';
import 'package:my_portfolio_site/presentation/widgets/section_title.dart';
import 'package:my_portfolio_site/presentation/widgets/space.dart';
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
      decoration: const BoxDecoration(color: Colors.black),
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
                        AboutItems(
                          constraints: constraints,
                        ),
                        AboutItems(
                          constraints: constraints,
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        ColumnOne(constraints: constraints),
                        AboutItems(
                          constraints: constraints,
                        ),
                        AboutItems(
                          constraints: constraints,
                        ),
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
        padding: const EdgeInsets.all(15.0),
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
            yellowDvider,
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  text: "I am a self-directed",
                  style: TextStyle(
                      fontSize: Responsive.isMobile(context) ? 14 : 17,
                      height: 1.5,
                      color: whiteTextColor),
                  children: [
                    TextSpan(
                      text: " Flutter Developer ",
                      style: TextStyle(
                          fontSize: Responsive.isMobile(context) ? 18 : 21,
                          fontWeight: FontWeight.w600,
                          color: Colors.yellow),
                    ),
                    const TextSpan(
                        text:
                            "with one year of hands-on experience. I have a bachelor's degree in computer science from the Kannur University, Kerala. I am proficient in Flutter, Dart, and Android development. I am also familiar with other programming languages such as Java, C, and C++.")
                  ]),
            ),
            Space.y(30),
            const Text(
              'Skills',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
            yellowDvider,
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  text: "Expert in : ",
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      height: 1.75),
                  children: [
                    TextSpan(
                        text: skills,
                        style: TextStyle(
                            height: 1.75,
                            fontSize: Responsive.isMobile(context) ? 14 : 17,
                            fontWeight: FontWeight.normal,
                            color: Colors.white))
                  ]),
            ),
            Space.y(10),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  text: "Familiar with : ",
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      height: 1.75),
                  children: [
                    TextSpan(
                      text: familiar,
                      style: TextStyle(
                        height: 1.75,
                        fontSize: Responsive.isMobile(context) ? 14 : 17,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    )
                  ]),
            ),
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
