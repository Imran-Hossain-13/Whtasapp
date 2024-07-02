import 'package:flutter/material.dart';

import '../../color.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .088,
      // width: size.width * .20,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: webAppBarColor,
        border: Border(
          right: BorderSide(
            color: dividerColor
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg"),
            radius: 35,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.message,color: Colors.grey,)
              ),
              const SizedBox(width: 5,),
              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.more_vert,color: Colors.grey,)
              ),
            ],
          )
        ],
      ),
    );
  }
}
