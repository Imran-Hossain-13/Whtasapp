import 'package:flutter/material.dart';
import '../color.dart';
import '../widget/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
                "WhatsApp",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600
              ),
            ),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(1.0),
              child: Column(
                children: [
                  // Container(
                  //   color: Colors.white38,
                  //   height: 1.0,
                  // ),
                  TabBar(
                    indicatorColor: tabColor,
                    indicatorWeight: 3,
                    labelColor: tabColor,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(text: "CHATS",),
                      Tab(text: "STATUS",),
                      Tab(text: "CALLS",),
                    ]
                  )
                ],
              ),
            ),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined, size: 30,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.search, size: 30,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, size: 30,)),
            ],
            toolbarHeight: 120.0,
            elevation: 0,
            backgroundColor: appBarColor,
          ),
          body: const ContactList(),
          floatingActionButton: SizedBox(
            width: 70,
            height: 70,
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: (){},
                backgroundColor: Colors.green.shade600,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                child: const Icon(Icons.comment,color: Colors.white,),
              ),
            ),
          ),
        ),
    );
  }
}
