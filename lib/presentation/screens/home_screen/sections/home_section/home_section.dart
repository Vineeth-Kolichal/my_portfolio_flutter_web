import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_portfolio_site/business_logic/cubit/pointer_move_cubit.dart';

import 'package:my_portfolio_site/util/icons.dart';

import 'dart:html' as html;

import '../../../../widgets/export_widgets.dart';

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
                            ? 3.5
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
                  child: NameInHomeSection(size: size),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class NameInHomeSection extends StatelessWidget {
  const NameInHomeSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  fontSize: Responsive.isDestop(context) ? 30 : 20,
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
                  html.window
                      .open('https://github.com/Vineeth-Kolichal', "_blank");
                },
                icon: CustomIcons.github,
              ),
              Space.x(10),
              const DownloadResumeButton()
            ],
          ),
        )
      ],
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
          if (value) {
            context.read<PointerMoveCubit>().setWidthZero(0.0);
          } else {
            context.read<PointerMoveCubit>().setWidthZero(30);
          }
          setState(() {
            isHover = value;
          });
        },
        onTap: () {
          html.AnchorElement anchorElement = html.AnchorElement(
              href:
                  'https://firebasestorage.googleapis.com/v0/b/my-portfolio-76a8d.appspot.com/o/Vineeth_Chandran_Flutter_Developer.pdf?alt=media&token=5007c1f3-a149-4588-86db-83448cbdc1ab');
          anchorElement.download = 'Vineeth_chandran_Resume';
          anchorElement.click();
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastEaseInToSlowEaseOut,
          height: isHover ? 60 : 50,
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
      return CircleButton(
          onTap: () {
            html.AnchorElement anchorElement = html.AnchorElement(
                href:
                    'https://firebasestorage.googleapis.com/v0/b/my-portfolio-76a8d.appspot.com/o/Vineeth_Chandran_Flutter_Developer.pdf?alt=media&token=5007c1f3-a149-4588-86db-83448cbdc1ab');
            anchorElement.download = 'Vineeth_chandran_Resume';
            anchorElement.click();
          },
          icon: CupertinoIcons.arrow_down_doc);
    }
  }
}
