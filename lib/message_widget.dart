import 'package:flutter/material.dart';
import 'package:whatsaap_c20/message_models.dart';

class messagewidget extends StatelessWidget {
 final MessageModel message;
   messagewidget({required this.message,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: message.isSender? .start : .end,
     children: [
       Container(
         constraints: BoxConstraints(maxWidth: 268),
         padding: .all(16),
         decoration: BoxDecoration(
           color: message.isSender? Colors.green:Colors.grey,
           borderRadius: .only(
             bottomLeft: .circular(16),
             bottomRight: .circular(16),
             topRight: .circular(message.isSender?16:0),
             topLeft: .circular(message.isSender?0:16),
           )
             

         ),child: Column(
         children: [
           if(message.message!=null)
             Text(message.message!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),)
           ,if(message.message!=null&& message.image!=null)
             SizedBox(height: 16,)
           ,if(message.image!=null)
             ClipRRect(child: Image.asset(message.image!),borderRadius: .circular(8 ),)
         ],
       ),
       )

     ],
    );
  }
}
