import 'package:flutter/material.dart';
import 'package:whatsapp/screeens/web_screen_layout.dart';

class Hello extends StatelessWidget {
  final Widget screenName;
  final double size;
  const Hello({super.key, required this.screenName, required this.size});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains){
      if(constrains.maxWidth < size){
        return screenName;
      }else{
        return Scaffold(
          body: Center(
            child: TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => WebScreenLayout()));
              },
              child: const Text("Reload"),
            ),
          ),
        );
      }
    });
  }
}
