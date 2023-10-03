import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../business_logic/export_cubit.dart';
import '../../../../../../util/constants.dart';
import '../../../../../widgets/export_widgets.dart';
import 'export_contact_widgets.dart';

class MessageForm extends StatelessWidget {
  const MessageForm({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    final sendmessage = context.read<SendMessageCubit>();
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
            child: Form(
              key: sendmessage.formKey,
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
                    controller: sendmessage.nameController,
                  ),
                  MessageMeTextField(
                    type: TextInputType.emailAddress,
                    labelText: 'e-mail',
                    controller: sendmessage.emailController,
                  ),
                  MessageMeTextField(
                    type: TextInputType.number,
                    labelText: 'Phone number',
                    controller: sendmessage.phoneController,
                  ),
                  MessageMeTextField(
                    type: TextInputType.multiline,
                    labelText: 'Your Message',
                    controller: sendmessage.messageController,
                    maxLines: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 35,
                      child: BlocBuilder<SendMessageCubit, SendMessageState>(
                        builder: (context, state) {
                          if (state.isSend == null && state.isSending == null) {
                            return ElevatedButton(
                              onPressed: () {
                                if (sendmessage.formKey.currentState!
                                    .validate()) {
                                  sendmessage.sendMessage();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow),
                              child: const Text(
                                'Send message',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                            );
                          } else if (state.isSending!) {
                            return const Center(
                              child: Text(
                                "Sending...",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.yellow),
                              ),
                            );
                          } else if (state.isSend!) {
                            return const Center(
                              child: Text(
                                "Message send successfully",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.green),
                              ),
                            );
                          } else {
                            return const Center(
                              child: Text(
                                "Message not send",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.red),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
