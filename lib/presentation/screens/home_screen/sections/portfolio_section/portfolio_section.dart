import 'package:flutter/material.dart';
import 'package:my_portfolio_site/presentation/widgets/responsive.dart';
import 'package:my_portfolio_site/presentation/widgets/space.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: const Color.fromARGB(255, 44, 43, 43),
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return FractionallySizedBox(
                widthFactor: constraints.maxWidth >= 1024 ? 0.8 : 1,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Space.y(70),
                      Text(
                        'Projects',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                      Space.y(20),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: Responsive.isDestop(context)
                              ? 4
                              : Responsive.isTabltet(context)
                                  ? 2
                                  : 1,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          children: List.generate(6, (index) {
                            return Center(
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(children: [
                                    Text('Name'),
                                    // Image.network(
                                    //     'https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3=w240-h480-rw')
                                  ]),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      Space.y(70),
                    ],
                  ),
                ));
          },
        ),
      ),
    );
  }
}
