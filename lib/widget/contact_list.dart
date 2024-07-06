import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../getx_management/getx_controller.dart';
import '../info.dart';
import '../screeens/mobile_chat_screen.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: info.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index){
             return Obx(() {
               if(counterController.searchedName.toString().isEmpty){
                 return InkWell(
                   onTap: (){},
                   child: Padding(
                     padding: const EdgeInsets.only(bottom: 8),
                     child: ListTile(
                       onTap: (){
                         counterController.imgUrl(info[index]['profilePic'].toString());
                         counterController.chatUserName(info[index]['name'].toString());
                         if(counterController.screenSize < 900){
                           SnackBar sc = SnackBar(content: Text(counterController.screenSize.toString()));
                           ScaffoldMessenger.of(context).showSnackBar(sc);
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MobileChatScreen()));
                         }
                       },
                       leading: CircleAvatar(
                         backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
                         radius: 28,
                       ),
                       title: Text(info[index]['name'].toString(),style: const TextStyle(fontSize: 18),),
                       subtitle: Padding(
                         padding: const EdgeInsets.only(top: 3),
                         child: Text(info[index]['message'].toString(),maxLines: 1,style: const TextStyle(fontSize: 14,color: Colors.grey),),
                       ),
                       trailing: Text(info[index]['time'].toString(),style: const TextStyle(fontSize: 12,color: Colors.grey),),
                     ),
                   ),
                 );
               }else if(info[index]['name'].toString().toLowerCase().contains(counterController.searchedName.toString().toLowerCase())){
                 return InkWell(
                   onTap: (){},
                   child: Padding(
                     padding: const EdgeInsets.only(bottom: 8),
                     child: ListTile(
                       onTap: (){
                         counterController.imgUrl(info[index]['profilePic'].toString());
                         counterController.chatUserName(info[index]['name'].toString());
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MobileChatScreen()));
                       },
                       leading: CircleAvatar(
                         backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
                         radius: 28,
                       ),
                       title: Text(info[index]['name'].toString(),style: const TextStyle(fontSize: 18),),
                       subtitle: Padding(
                         padding: const EdgeInsets.only(top: 3),
                         child: Text(info[index]['message'].toString(),maxLines: 1,style: const TextStyle(fontSize: 14,color: Colors.grey),),
                       ),
                       trailing: Text(info[index]['time'].toString(),style: const TextStyle(fontSize: 12,color: Colors.grey),),
                     ),
                   ),
                 );
               }else{
                 return Container();
               }
             });
          }
      ),
    );
  }
}
