
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../util/constants.dart';
import '../../../../../widgets/export_widgets.dart';
import 'export_about_section_widgets.dart';

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
                  'Familiar to build scalable and reliable web applications with Node.js, Express, and MongoDB, a powerful and flexible stack for backend development.',
            ),
          ],
        ),
      ),
    );
  }
}

