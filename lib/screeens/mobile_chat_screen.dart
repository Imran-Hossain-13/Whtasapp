import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/color.dart';
import 'package:whatsapp/widget/chat_list_need/chat_list.dart';

import '../getx_management/getx_controller.dart';

class MobileChatScreen extends StatelessWidget {
  MobileChatScreen({super.key});
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back,size: 27,)),
            Obx(() {
              return CircleAvatar(
                backgroundImage: NetworkImage(
                  counterController.imgUrl.toString(),
                ),
                radius: 22,
              );
            }),
            const SizedBox(width: 5,),
            Obx(() {
              return Text(counterController.chatUserName.toString());
            }),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.video_call_outlined,size: 30,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.call,size: 28,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,size: 30,)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/backgroundImage.png"),fit: BoxFit.cover),
            ),
            child: ChatList(),
          )),
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: mobileChatBoxColor,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: IconButton(onPressed: (){},icon: const Icon(Icons.emoji_emotions_outlined,size: 28),),
                ),
                hintText: "Type a message..",
                suffixIcon: SizedBox(
                  width: 170,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined,color: Colors.grey,size: 28,)),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.attach_file,color: Colors.grey,size: 28)),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_voice_outlined,color: Colors.grey,size: 28)),
                      ],
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none
                    )
                ),
                contentPadding: const EdgeInsets.all(20)
            ),
          ),
        ],
      ),
    );
  }
}
