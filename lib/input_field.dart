import 'package:flutter/material.dart';

import 'strings.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
                style: TextStyle(
                    color: Colors.white,fontWeight: .w500,fontSize: 14
                ),cursorColor: Colors.green,
                decoration: InputDecoration(
                    hintText:Strings.typemessage,
                    hintStyle: TextStyle(color: Colors.white,fontWeight: .w500,fontSize: 14),
                    prefixIcon: Icon(Icons.camera_alt_rounded,color: Colors.white,),
                    suffixIcon: Icon(Icons.send,color: Colors.white,),
                    disabledBorder:OutlineInputBorder(
                        borderRadius: .circular(40),
                        borderSide: BorderSide(width: 1,color: Colors.green)
                    ) ,
                    enabledBorder:OutlineInputBorder(
                        borderRadius: .circular(40),
                        borderSide: BorderSide(width: 1,color: Colors.green)
                    ) ,
                    errorBorder: OutlineInputBorder(
                        borderRadius: .circular(40),
                        borderSide: BorderSide(width: 1,color: Colors.green)
                    ) ,focusedBorder: OutlineInputBorder(
                    borderRadius: .circular(40),
                    borderSide: BorderSide(width: 1,color: Colors.green)
                ) ,focusedErrorBorder: OutlineInputBorder(
                    borderRadius: .circular(40),
                    borderSide: BorderSide(width: 1,color: Colors.green)
                )

                )),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.mic),style:IconButton.styleFrom(
            backgroundColor: Colors.green,foregroundColor: Colors.white
          ) ,)
        ],
      ),
    );
  }
}
