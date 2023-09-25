import 'package:flutter/widgets.dart';

class NameInNavBar extends StatefulWidget {
  const NameInNavBar({
    super.key,
  });

  @override
  State<NameInNavBar> createState() => _NameInNavBarState();
}

class _NameInNavBarState extends State<NameInNavBar> {
  double opacity = 0.0;
  void _setOpacity() {
    setState(() {
      opacity = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _setOpacity();
    });
    return AnimatedOpacity(
      opacity: opacity,
      duration: const Duration(milliseconds: 1500),
      child: const Text(
        'Vineeth Chandran',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
      ),
    );
  }
}
