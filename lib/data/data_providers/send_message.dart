import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class SendMessageAPI {
  static SendMessageAPI sendMessageAPI = SendMessageAPI._internal();

  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('messages');

  Future<bool> sendMessageToMe(Map<String, dynamic> message) async {
    try {
      await collectionReference.add(message);
      return true;
    } on FirebaseException catch (e) {
      log(e.toString());
      return false;
    } catch (e) {
      return false;
    }
  }

  factory SendMessageAPI() {
    return sendMessageAPI;
  }
  SendMessageAPI._internal();
}
