import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:my_portfolio_site/util/key.dart';

class SendMessageAPI {
  static SendMessageAPI sendMessageAPI = SendMessageAPI._internal();
  Dio dio = Dio();
  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('messages');
  final DocumentReference profileDocRef =
      FirebaseFirestore.instance.collection('profile').doc('vineeth');

  Future<bool> sendMessageToMe(Map<String, dynamic> message) async {
    try {
      await collectionReference.add(message);
      final DocumentSnapshot<Object?> docSnap = await profileDocRef.get();
      final docObj = docSnap.data() as Map<String, dynamic>;
      final token = docObj['fcm-token'];
      await dio.post('https://fcm.googleapis.com/fcm/send',
          data: {
            "to": token,
            "notification": {
              "title": '${message['name']} send a message',
              "body": message['message']
            },
            "data": {
              "title": '${message['name']} send a message',
              "body": message['message']
            }
          },
          options: Options(headers: {
            'Authorization': fcmKey,
            'Content-Type': 'application/json',
          }));
      return true;
    } on FirebaseException catch (e) {
      log(e.toString());
      return false;
    } on DioException catch (e) {
      print(e.toString());
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
