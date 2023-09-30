
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/cubit/pointer_move_cubit.dart';

class CircleButton extends StatefulWidget {
  const CircleButton({
    super.key,
    required this.onTap,
    required this.icon,
  });
  final Function() onTap;
  final IconData icon;
  @override
  State<CircleButton> createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        if (value) {
          context.read<PointerMoveCubit>().setWidthZero(0.0);
        } else {
          context.read<PointerMoveCubit>().setWidthZero(30);
        }

        setState(() {
          isHover = value;
        });
      },
      onTap: widget.onTap,
      child: AnimatedContainer(
        curve: Curves.fastEaseInToSlowEaseOut,
        duration: const Duration(milliseconds: 500),
        width: isHover ? 60 : 50,
        height: isHover ? 60 : 50,
        decoration: BoxDecoration(
          color: isHover ? Colors.yellow : const Color.fromARGB(166, 0, 0, 0),
          shape: BoxShape.circle,
        ),
        child: Icon(
          widget.icon,
          color: isHover ? Colors.black : Colors.yellow,
        ),
      ),
    );
  }
}
