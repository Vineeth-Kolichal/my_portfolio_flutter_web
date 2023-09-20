import 'package:flutter/widgets.dart';

class NameInNavBar extends StatefulWidget {
  const NameInNavBar({
    super.key,
  });

  @override
  State<NameInNavBar> createState() => _NameInNavBarState();
}

class _NameInNavBarState extends State<NameInNavBar> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeOut,
      duration: Duration(milliseconds: 5000),
      child: Text(
        'Vineeth Chandran',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
      ),
    );
  }
}