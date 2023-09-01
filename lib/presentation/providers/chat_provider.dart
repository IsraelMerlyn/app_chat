import 'package:app_chat/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvidewr extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Hola aqua', fromWho: FromWho.me),
    Message(text: 'ya fuiste a comer?', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    //TODO: implementar metodo
  }
}
