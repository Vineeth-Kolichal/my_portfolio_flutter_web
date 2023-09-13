import 'package:flutter/material.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(255, 44, 43, 43),
      height: size.height,
      child: Center(
        child: Text('portfolio'),
      ),
    );
  }
}
