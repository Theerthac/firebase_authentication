import 'package:flutter/material.dart';

class ChatPost extends StatelessWidget {
  final String message;
  final String user;
  
  const ChatPost(
      {super.key,
      required this.message,
      required this.user,
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(top: 25,left: 25,right: 25),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey.shade500),
            padding: const EdgeInsets.all(10),
            child: const Icon(Icons.person,color: Colors.white,),
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user,style: TextStyle(color: Colors.grey.shade700),),
              const SizedBox(height: 10,),
              Text(message),
            ],
          )
        ],
      ),
    );
  }
}
