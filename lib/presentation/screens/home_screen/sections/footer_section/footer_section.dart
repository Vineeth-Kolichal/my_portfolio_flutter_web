import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 50,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Made with '),
            const Icon(
              Icons.favorite,
              color: Colors.yellow,
              size: 17,
            ),
            const Text(' by Vineeth '),
            const Icon(
              Icons.copyright,
              size: 16,
            ),
            Text(' ${DateTime.now().year}')
          ],
        ),
      ),
    );
  }
}
