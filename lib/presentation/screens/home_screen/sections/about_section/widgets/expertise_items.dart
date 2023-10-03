import 'package:flutter/material.dart';

import '../../../../../widgets/export_widgets.dart';

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
            color: const Color(0xFFFFEB3B),
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
                SelectableText(
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
