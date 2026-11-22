import 'package:flutter/material.dart';
import 'package:whatsaap_c20/app_bar.dart';
import 'package:whatsaap_c20/input_field.dart';
import 'package:whatsaap_c20/message_models.dart';

import 'message_widget.dart';
import 'strings.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<MessageModel> message = [
    MessageModel(message: Strings.hello),
    MessageModel(message: Strings.hello, isSender: false),
    MessageModel(message: Strings.message1, isSender: true),
    MessageModel(
      message: Strings.message2,
      image: "assets/image/Route.png",
    ),
    MessageModel(message: Strings.message2, isSender: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/back_ground.png"),
          fit: .cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar_whatsApp(),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding: .all(16),
                itemBuilder: (context, index) => messagewidget(message: message[index]),
                separatorBuilder: (context, index) => SizedBox(height: 16,),
                itemCount: message.length,
              ),
             ),InputField()
          ]
        ),
      ),
    );
  }
}
