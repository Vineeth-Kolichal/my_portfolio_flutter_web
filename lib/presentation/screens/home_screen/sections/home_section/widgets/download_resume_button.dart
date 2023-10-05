import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../business_logic/export_cubit.dart';
import '../../../../../widgets/export_widgets.dart';

class DownloadResumeButton extends StatefulWidget {
  const DownloadResumeButton({
    super.key,
    required this.resumeLink,
  });
  final String resumeLink;
  @override
  State<DownloadResumeButton> createState() => _DownloadResumeButtonState();
}

class _DownloadResumeButtonState extends State<DownloadResumeButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    if (Responsive.isDestop(context) || Responsive.isTabltet(context)) {
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
        onTap: () {
          html.AnchorElement anchorElement =
              html.AnchorElement(href: widget.resumeLink);
          anchorElement.download = 'Vineeth_chandran_Resume';
          anchorElement.click();
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastEaseInToSlowEaseOut,
          height: isHover ? 60 : 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color:
                  isHover ? Colors.yellow : const Color.fromARGB(166, 0, 0, 0)),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Download my resume',
              style: TextStyle(
                  color: isHover ? Colors.black : Colors.yellow,
                  fontWeight: FontWeight.w800),
            ),
          )),
        ),
      );
    } else {
      return CircleButton(
        onTap: () {
          html.AnchorElement anchorElement =
              html.AnchorElement(href: widget.resumeLink);
          anchorElement.download = 'Vineeth_chandran_Resume';
          anchorElement.click();
        },
        icon: CupertinoIcons.arrow_down_doc,
      );
    }
  }
}
