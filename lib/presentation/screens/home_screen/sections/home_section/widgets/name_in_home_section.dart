import 'package:flutter/material.dart';

import '../../../../../../util/icons.dart';
import '../../../../../widgets/export_widgets.dart';
import 'export_home_section_widgets.dart';
import 'dart:html' as html;

class NameInHomeSection extends StatelessWidget {
  const NameInHomeSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: Responsive.isDestop(context)
          //       ? size.width * 0.2
          //       : size.width * 0.25,
          // ),
          const Text(
            "Hi, I'm",
            style: TextStyle(fontSize: 35),
          ),
          Text(
            'Vineeth Chandran',
            style: TextStyle(
                fontSize: Responsive.isDestop(context)
                    ? 80
                    : Responsive.isTabltet(context)
                        ? 35
                        : 30,
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
      ),
    );
  }
}

