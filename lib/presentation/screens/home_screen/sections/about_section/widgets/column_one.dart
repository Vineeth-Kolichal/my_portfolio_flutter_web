
import 'package:flutter/material.dart';

import '../../../../../../util/constants.dart';
import '../../../../../widgets/export_widgets.dart';

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
                    "I am a self-directed Flutter Developer with one year of hands-on experience. I have a bachelor's degree in computer science from the Kannur University, Kerala. I am proficient in mobile app development using Flutter. I am also familiar with web designing and backend development using Node.js, Express",
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

String skills =
    "Flutter, Dart, BloC, Provider, GetX, REST API Integration, Firebase, Hive, SQFLite, Git, GitHub, MVVM, MVC, BLoC Architecture";
String familiar =
    "Firebase FCM, Google map, HTML, CSS, JavaScript, Bootstrap, Java, Node js, Express js, MongoDB";