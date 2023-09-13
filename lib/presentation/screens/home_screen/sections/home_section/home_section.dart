import 'package:flutter/material.dart';
import 'package:my_portfolio_site/presentation/widgets/responsive.dart';
import 'package:my_portfolio_site/presentation/widgets/space.dart';
import 'package:my_portfolio_site/util/icons.dart';
import 'dart:html' as html;

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: LayoutBuilder(builder: (context, constrains) {
        return Center(
          child: FractionallySizedBox(
            widthFactor: constrains.maxWidth >= 1024 ? 0.8 : 1,
            child: Stack(
              children: [
                Positioned(
                  right: Responsive.isDestop(context) ? 10 : null,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/image.png',
                    scale: Responsive.isDestop(context)
                        ? 0.5
                        : Responsive.isTabltet(context)
                            ? 0.6
                            : 1,
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Responsive.isDestop(context)
                            ? size.width * 0.2
                            : size.width * 0.25,
                      ),
                      Text(
                        "Hi, I'm",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Vineeth Chandran',
                        style: TextStyle(
                            fontSize: Responsive.isDestop(context) ? 50 : 30,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: Responsive.isDestop(context)
                            ? size.width * 0.26
                            : size.width * 0.7,
                        child: Divider(
                          color: Colors.yellow,
                          thickness: 7,
                        ),
                      ),
                      Container(
                        color: !Responsive.isDestop(context)
                            ? Color.fromARGB(94, 70, 69, 69)
                            : null,
                        width: Responsive.isDestop(context)
                            ? size.width * 0.26
                            : size.width * 0.7,
                        child: Text(
                          "I am a self-directed Flutter developer with one year of hands-on experience. I have a bachelor's degree in computer science from the Kannur University, Kerala. I am proficient in Flutter, Dart, and Android development. I am also familiar with other programming languages such as Java, Go, C, and C++.",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Space.y(20),
                      SizedBox(
                        width: Responsive.isDestop(context)
                            ? size.width * 0.26
                            : size.width * 0.7,
                        child: Row(
                          children: [
                            CircleButton(
                              icon: CustomIcons.linkedin,
                              onTap: () {
                                html.window.open(
                                    'https://www.linkedin.com/in/vineeth-chandran-kolichal/',
                                    "_blank");
                              },
                            ),
                            Space.x(10),
                            CircleButton(
                              onTap: () {
                                html.window.open(
                                    'https://github.com/Vineeth-Kolichal',
                                    "_blank");
                              },
                              icon: CustomIcons.github,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class CircleButton extends StatefulWidget {
  const CircleButton({
    super.key,
    required this.onTap,
    required this.icon,
  });
  final Function() onTap;
  final IconData icon;
  @override
  State<CircleButton> createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      onTap: widget.onTap,
      child: CircleAvatar(
        backgroundColor:
            isHover ? Colors.yellow : const Color.fromARGB(166, 0, 0, 0),
        radius: 25,
        child: Icon(
          widget.icon,
          color: isHover ? Colors.black : Colors.yellow,
        ),
      ),
    );
  }
}
