
import 'package:flutter/material.dart';

import '../../../../../widgets/export_widgets.dart';

class ContactTypeTile extends StatelessWidget {
  const ContactTypeTile({
    super.key,
    required this.content,
    required this.icon,
    this.onTap
  });
  final String content;
  final IconData icon;
  final Function()? onTap;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFFFEB3B),
            size: 50,
          ),
          Space.x(10),
          const SizedBox(height: 70, child: VerticalDivider()),
          Expanded(
            child: SelectableText(
              onTap: onTap,
              content,
              style: const TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

