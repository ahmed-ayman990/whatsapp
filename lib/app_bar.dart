import 'package:flutter/material.dart';

class AppBar_whatsApp extends StatelessWidget implements PreferredSizeWidget {
  const AppBar_whatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.green,
      leadingWidth: 20,
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_outlined)),
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/image/WhatsApp Image.jpeg"),
          ),SizedBox(width: 8,),
          Text("Ahmed Ayman",style: TextStyle(fontSize: 14,fontWeight: .w700,
              color: Colors.white),)
        ],
      ),actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.call)),
        IconButton(onPressed: (){}, icon: Icon(Icons.videocam)),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
    ],


    );

  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 68);
}
