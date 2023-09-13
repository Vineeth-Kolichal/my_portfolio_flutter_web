import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key, this.leading, this.trailing});
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Color.fromARGB(129, 66, 66, 66),
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
  }
}
