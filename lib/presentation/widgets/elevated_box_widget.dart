import 'package:flutter/material.dart';
import 'package:my_portfolio_site/util/constants.dart';

import 'space.dart';

class ElevatedBoxWidget extends StatelessWidget {
  const ElevatedBoxWidget({
    required this.title,
    super.key,
    required this.child,
  });
  final Widget child;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 10,
      shadowColor: const Color.fromARGB(255, 41, 40, 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 20, 20, 20),
              Color.fromARGB(255, 0, 0, 0)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
              yellowDivider,
              Space.y(10),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
