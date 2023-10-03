import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio_site/business_logic/pointer_move/pointer_move_cubit.dart';
import 'package:my_portfolio_site/presentation/widgets/circle_button.dart';
import 'package:my_portfolio_site/presentation/widgets/elevated_box_widget.dart';
import 'package:my_portfolio_site/presentation/widgets/responsive.dart';
import 'package:my_portfolio_site/presentation/widgets/section_title.dart';
import 'package:my_portfolio_site/presentation/widgets/space.dart';
import 'package:my_portfolio_site/util/constants.dart';
import 'package:my_portfolio_site/util/icons.dart';
import 'dart:html' as html;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // context.read<NavBarCubit>().selectSection(3);
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 15, 15, 15),
          ],
        ),
      ),
      child: LayoutBuilder(builder: (context, constrains) {
        return FractionallySizedBox(
          widthFactor: constrains.maxWidth >= 1024 ? 0.8 : 1,
          child: Column(children: [
            Space.y(70),
            const SectionTitle(title: 'Contact Me'),
            Space.y(20),
            Responsive(
              desktop: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContactDetailsAndLottie(
                    width: (constrains.maxWidth * 0.7) / 2,
                  ),
                  MessageForm(
                    width: (constrains.maxWidth * 0.7) / 2,
                  )
                ],
              ),
              mobile: Column(
                children: [
                  ContactDetailsAndLottie(
                    width: constrains.maxWidth * 0.95,
                  ),
                  MessageForm(
                    width: constrains.maxWidth * 0.95,
                  )
                ],
              ),
            ),
          ]),
        );
      }),
    );
  }
}

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
            const ElevatedBoxWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Get in touch',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                  yellowDivider,
                  ContactTypeTile(
                    content:
                        'Erinhilamkode (H),\nKolichal (PO),\nRajapuram (via), \nKasaragod (DT),\nKerala, 671532 ',
                    icon: Icons.location_on_outlined,
                  ),
                  ContactTypeTile(
                    content: 'vineethchandran5898@gmail.com',
                    icon: CupertinoIcons.mail,
                  ),
                  ContactTypeTile(
                    content: '+91 9074492664\n+91 8281234435',
                    icon: Icons.phone,
                  ),
                ],
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

class ContactTypeTile extends StatelessWidget {
  const ContactTypeTile({
    super.key,
    required this.content,
    required this.icon,
  });
  final String content;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFFFEB3B),
            size: 50,
          ),
          Space.x(10),
          const SizedBox(height: 70, child: VerticalDivider()),
          Expanded(
            child: SelectableText(
              content,
              style: const TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

class MessageForm extends StatelessWidget {
  const MessageForm({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        if (value) {
          context.read<PointerMoveCubit>().setWidthZero(0);
        } else {
          context.read<PointerMoveCubit>().setWidthZero(30);
        }
      },
      onTap: () {},
      child: SizedBox(
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedBoxWidget(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Message to me',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                yellowDivider,
                MessageMeTextField(
                  type: TextInputType.name,
                  labelText: 'Your Name',
                  controller: TextEditingController(),
                ),
                MessageMeTextField(
                    type: TextInputType.emailAddress,
                    labelText: 'e-mail',
                    controller: TextEditingController()),
                MessageMeTextField(
                  type: TextInputType.number,
                  labelText: 'Phone number',
                  controller: TextEditingController(),
                ),
                MessageMeTextField(
                  type: TextInputType.multiline,
                  labelText: 'Your Message',
                  controller: TextEditingController(),
                  maxLines: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      showAdaptiveDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text("Oh ohhh!!!"),
                          content: const Text(
                              'Send message facility is not available now'),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Close'))
                          ],
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow),
                    child: const Text(
                      'Send message',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w800),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MessageMeTextField extends StatelessWidget {
  const MessageMeTextField({
    super.key,
    required this.labelText,
    required this.controller,
    this.maxLines,
    required this.type,
  });
  final String labelText;
  final TextEditingController controller;
  final int? maxLines;
  final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        keyboardType: type,
        cursorHeight: 20,
        maxLines: maxLines,
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please fill $labelText";
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.yellow),
          constraints: const BoxConstraints(minHeight: 40),
          labelText: labelText,
        ),
      ),
    );
  }
}
