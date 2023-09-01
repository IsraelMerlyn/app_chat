import 'package:app_chat/presentation/widgets/chat/her_message_bubble.dart';
import 'package:app_chat/presentation/widgets/chat/my_message_buble.dart';
import 'package:app_chat/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://e0.pxfuel.com/wallpapers/630/54/desktop-wallpaper-look-vector-art-tears-aqua-aqua-to-konosub-a-aqua-konosuba.jpg'),
          ),
        ),
        title: const Text('Aqua'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? HerMessageBubble()
                      : MyMessageBubble();
                },
              ),
            ),
            //Caja de texto
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
