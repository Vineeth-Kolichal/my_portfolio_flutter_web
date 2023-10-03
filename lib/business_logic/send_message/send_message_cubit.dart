
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_portfolio_site/data/data_providers/send_message.dart';

part 'send_message_state.dart';
part 'send_message_cubit.freezed.dart';

class SendMessageCubit extends Cubit<SendMessageState> {
  SendMessageAPI sendMessageAPI = SendMessageAPI();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  SendMessageCubit() : super(SendMessageState.initial());
  Future<void> sendMessage() async {
    emit(state.copyWith(isSending: true));
    Map<String, dynamic> message = {
      "name": nameController.text.trim(),
      "email": emailController.text.trim(),
      "phone": phoneController.text.trim(),
      "message": messageController.text.trim(),
      "date": Timestamp.fromDate(DateTime.now())
    };
    final status = await sendMessageAPI.sendMessageToMe(message);
    emit(state.copyWith(isSending: false, isSend: status));
    nameController.clear();
    phoneController.clear();
    emailController.clear();
    messageController.clear();
    await Future.delayed(const Duration(milliseconds: 1500));
    emit(state.copyWith(isSending: null, isSend: null));
    print(message.toString());
  }
}
