import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../info.dart';
import 'my_message.dart';
import 'sender_message.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index){
          if(messages[index]["isMe"] == true){
            return MyMessageList(message: messages[index]["text"].toString(), date: messages[index]["time"].toString(),);
          }
          return SenderMessage(message: messages[index]["text"].toString(), date: messages[index]["time"].toString(),);
        }
    );
  }
}
