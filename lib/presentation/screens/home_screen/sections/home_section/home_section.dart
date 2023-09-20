import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_portfolio_site/business_logic/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:my_portfolio_site/presentation/widgets/responsive.dart';
import 'package:my_portfolio_site/presentation/widgets/space.dart';
import 'package:my_portfolio_site/util/colors.dart';
import 'package:my_portfolio_site/util/icons.dart';
import 'dart:html' as html;

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // context.read<NavBarCubit>().selectSection(0);
    return Container(
      decoration: const BoxDecoration(
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
      height: size.height,
      child: LayoutBuilder(builder: (context, constrains) {
        return Center(
          child: FractionallySizedBox(
            widthFactor: constrains.maxWidth >= 1024 ? 0.8 : 1,
            child: Stack(
              children: [
                Positioned(
                  right: Responsive.isDestop(context) ? 10 : 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/image.png',
                    scale: Responsive.isDestop(context)
                        ? 3
                        : Responsive.isTabltet(context)
                            ? 3
                            : 5.5,
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: const BoxDecoration(
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
                      const Text(
                        "Hi, I'm",
                        style: TextStyle(fontSize: 35),
                      ),
                      Text(
                        'Vineeth Chandran',
                        style: TextStyle(
                            fontSize: Responsive.isDestop(context) ? 80 : 35,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: Responsive.isDestop(context)
                            ? size.width * 0.3
                            : size.width * 0.7,
                        child: const Divider(
                          color: Colors.yellow,
                          thickness: 7,
                        ),
                      ),
                      Container(
                          color: !Responsive.isDestop(context)
                              ? const Color.fromARGB(94, 70, 69, 69)
                              : null,
                          width: Responsive.isDestop(context)
                              ? size.width * 0.3
                              : size.width * 0.7,
                          child: Text(
                            'Flutter Developer',
                            style: TextStyle(
                                fontSize:
                                    Responsive.isDestop(context) ? 30 : 20,
                                letterSpacing: 15),
                          )),
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
                            ),
                            Space.x(10),
                            const DownloadResumeButton()
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

class DownloadResumeButton extends StatefulWidget {
  const DownloadResumeButton({
    super.key,
  });

  @override
  State<DownloadResumeButton> createState() => _DownloadResumeButtonState();
}

class _DownloadResumeButtonState extends State<DownloadResumeButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    if (Responsive.isDestop(context) || Responsive.isTabltet(context)) {
      return InkWell(
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        onTap: () {},
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color:
                  isHover ? Colors.yellow : const Color.fromARGB(166, 0, 0, 0)),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Download my resume',
              style: TextStyle(
                  color: isHover ? Colors.black : Colors.yellow,
                  fontWeight: FontWeight.w800),
            ),
          )),
        ),
      );
    } else {
      return CircleButton(onTap: () {}, icon: Iconsax.document_download);
    }
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
