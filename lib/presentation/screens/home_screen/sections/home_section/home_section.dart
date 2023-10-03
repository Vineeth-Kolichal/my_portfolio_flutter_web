import 'package:flutter/material.dart';
import 'package:my_portfolio_site/presentation/screens/home_screen/sections/home_section/widgets/export_home_section_widgets.dart';



import '../../../../widgets/export_widgets.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // context.read<NavBarCubit>().selectSection(0);
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.transparent,
            Colors.transparent,
            Colors.transparent,
            Colors.black
          ],
        ),
      ),
      height: size.height,
      child: LayoutBuilder(builder: (context, constrains) {
        return Center(
          child: FractionallySizedBox(
            widthFactor: constrains.maxWidth >= 1024 ? 0.8 : 1,
            child: Stack(
              children: [
                Positioned(
                  right: Responsive.isDestop(context) ? 10 : 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/image.png',
                    scale: Responsive.isDestop(context)
                        ? (size.width / size.height) * 2
                        : Responsive.isTabltet(context)
                            ? 3.5
                            : (size.height / size.width) * 3.2,
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: Responsive.isDestop(context)
                      ? 250
                      : Responsive.isTabltet(context)
                          ? 200
                          : 100,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: NameInHomeSection(size: size),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

