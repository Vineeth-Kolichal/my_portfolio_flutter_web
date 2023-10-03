
import 'package:flutter/material.dart';

class MessageMeTextField extends StatelessWidget {
  const MessageMeTextField({
    super.key,
    required this.labelText,
    required this.controller,
    this.maxLines,
    required this.type,
  });
  final String labelText;
  final TextEditingController controller;
  final int? maxLines;
  final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        keyboardType: type,
        cursorHeight: 20,
        maxLines: maxLines,
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please fill $labelText";
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.yellow),
          constraints: const BoxConstraints(minHeight: 40),
          labelText: labelText,
        ),
      ),
    );
  }
}
