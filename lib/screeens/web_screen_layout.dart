import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../color.dart';
import '../getx_management/getx_controller.dart';
import '../widget/chat_list_need/chat_list.dart';
import '../widget/contact_list.dart';
import '../widget/web_chat_need/web_chat_appbar.dart';
import '../widget/web_chat_need/web_profile_bar.dart';
import '../widget/web_chat_need/web_search_bar.dart';

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({super.key});

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: Column(
            children: [
              WebProfileBar(),
              WebSearchBar(),
              Expanded(
                child: ContactList(),
              )
            ],
          )),
          Container(
            width: size.width * 0.70,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/backgroundImage.png"),fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                const WebChatAppbar(),
                const Expanded(child: ChatList()),
                Container(
                  height: size.height * .075,
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: dividerColor),
                    ),
                    color: chatBarMessage
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.emoji_emotions_outlined,color: Colors.grey,)),
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.attach_file,color: Colors.grey,)),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: searchBarColor,
                            hintText: "Type a message",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(width: 0,style: BorderStyle.none)
                            ),
                            contentPadding: const EdgeInsets.only(left: 20)
                          ),
                        ),
                      )),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: const Icon(Icons.mic,color: Colors.white,size: 25,),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
