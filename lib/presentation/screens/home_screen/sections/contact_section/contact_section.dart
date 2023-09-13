import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      child: Center(
        child: Text('contact'),
      ),
      color: Color.fromARGB(255, 70, 69, 69),
    );
  }
}
