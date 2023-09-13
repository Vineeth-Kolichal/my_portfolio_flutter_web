import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      child: Center(
        child: Text('About'),
      ),
      decoration: BoxDecoration(color: Colors.black),
    );
  }
}
