import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key, this.leading, this.trailing});
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      color: const Color.fromARGB(129, 66, 66, 66),
      child: LayoutBuilder(builder: (context, constraints) {
        return FractionallySizedBox(
          widthFactor: constraints.maxWidth >= 1024 ? 0.8 : 1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                leading ?? const SizedBox.shrink(),
                trailing ?? const SizedBox.shrink()
              ],
            ),
          ),
        );
      }),
    );
  }
}
