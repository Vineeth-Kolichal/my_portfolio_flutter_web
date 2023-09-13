import 'package:flutter/material.dart';
import 'package:my_portfolio_site/presentation/widgets/space.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: LayoutBuilder(builder: (context, constrains) {
          return Center(
            child: FractionallySizedBox(
              widthFactor: constrains.maxWidth >= 1024 ? 0.8 : 1,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hi, I'm",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'Vineeth Chandran',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                          width: size.width * 0.2,
                          child: Divider(
                            thickness: 10,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
