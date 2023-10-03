import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio_site/business_logic/export_cubit.dart';

import '../../../../../../util/constants.dart';
import '../../../../../../util/icons.dart';
import '../../../../../widgets/export_widgets.dart';
import 'export_contact_widgets.dart';
import 'dart:html' as html;

class ContactDetailsAndLottie extends StatelessWidget {
  const ContactDetailsAndLottie({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {},
              onHover: (value) {
                if (value) {
                  context.read<PointerMoveCubit>().setWidthZero(0);
                } else {
                  context.read<PointerMoveCubit>().setWidthZero(30);
                }
              },
              child: ElevatedBoxWidget(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Get in touch',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                    yellowDivider,
                    const ContactTypeTile(
                      content:
                          'Erinhilamkode (H),\nKolichal (PO),\nRajapuram (via), \nKasaragod (DT),\nKerala, 671532 ',
                      icon: Icons.location_on_outlined,
                    ),
                    ContactTypeTile(
                      onTap: () async {
                        html.window.open(
                            'mailto:vineethchandran5898@gmail.com', "_blank");
                      },
                      content: 'vineethchandran5898@gmail.com',
                      icon: CupertinoIcons.mail,
                    ),
                    const ContactTypeTile(
                      content: '+91 9074492664\n+91 8281234435',
                      icon: Icons.phone,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 60,
                child: Center(
                  child: Row(
                    children: [
                      CircleButton(
                        icon: CustomIcons.linkedin,
                        onTap: () {
                          html.window.open(
                              'https://www.linkedin.com/in/vineeth-chandran-kolichal/',
                              "_blank");
                        },
                      ),
                      Space.x(10),
                      CircleButton(
                        onTap: () {
                          html.window.open(
                              'https://github.com/Vineeth-Kolichal', "_blank");
                        },
                        icon: CustomIcons.github,
                      ),
                      Space.x(10),
                      CircleButton(
                          onTap: () {
                            html.window.open(
                                'https://www.instagram.com/vineeth.kolichal/?hl=en',
                                "_blank");
                          },
                          icon: CustomIcons.instagram),
                      Space.x(10),
                      CircleButton(
                          onTap: () {
                            html.window.open(
                                'https://api.whatsapp.com/send/?phone=9074492664&text&type=phone_number',
                                "_blank");
                          },
                          icon: CustomIcons.whatsapp),
                    ],
                  ),
                ),
              ),
            ),
            LottieBuilder.asset(
              'assets/lottie/contact.json',
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
