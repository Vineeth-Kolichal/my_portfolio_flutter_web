import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MessageMeTextField extends StatelessWidget {
  const MessageMeTextField({
    super.key,
    required this.labelText,
    required this.controller,
    this.maxLines,
    required this.type,
    this.maxLength,
    this.formatters, this.validator,
  });
  final String labelText;
  final TextEditingController controller;
  final int? maxLines;
  final TextInputType type;
  final int? maxLength;
  final List<TextInputFormatter>? formatters;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        keyboardType: type,
        inputFormatters: formatters,
        cursorHeight: 20,
        maxLength: maxLength,
        maxLines: maxLines,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.yellow),
          constraints: const BoxConstraints(minHeight: 40),
          labelText: labelText,
        ),
      ),
    );
  }
}
