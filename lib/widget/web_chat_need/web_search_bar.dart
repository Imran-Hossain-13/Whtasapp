import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../color.dart';
import '../../getx_management/getx_controller.dart';

class WebSearchBar extends StatefulWidget {
  const WebSearchBar({super.key});

  @override
  State<WebSearchBar> createState() => _WebSearchBarState();
}

class _WebSearchBarState extends State<WebSearchBar> {
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .09,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor)
        )
      ),
      child: TextField(
        onChanged: (searchData){
          counterController.changeSearchName(searchData);
        },
        decoration: InputDecoration(
            prefixIcon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.search),
            ),
            hintText: "Search or start new chats",
            hintStyle: const TextStyle(fontSize: 14),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none
                )
            ),
            fillColor: searchBarColor,
            filled: true,
            contentPadding: const EdgeInsets.all(20)
        ),
      ),
    );
  }
}
