import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../color.dart';
import '../../getx_management/getx_controller.dart';
import '../../info.dart';

class WebChatAppbar extends StatefulWidget {
  const WebChatAppbar({super.key});

  @override
  State<WebChatAppbar> createState() => _WebChatAppbarState();
}

class _WebChatAppbarState extends State<WebChatAppbar> {
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .088,
      color: webAppBarColor,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Obx(() {
                return CircleAvatar(
                  backgroundImage: NetworkImage(
                    counterController.imgUrl.toString().isEmpty?info[0]['profilePic'].toString():counterController.imgUrl.toString(),
                  ),
                  radius: 33,
                );
              }),
              Obx(() {
                return Text(counterController.chatUserName.toString().isEmpty?info[0]['name'].toString():counterController.chatUserName.toString(),style: const TextStyle(fontSize: 18),);
              })
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
              const SizedBox(width: 5,),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
            ],
          )
        ],
      ),
    );
  }
}
