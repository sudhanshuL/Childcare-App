//import 'dart:html';

//import 'package:chat_app/chat/message_bubble.dart';
import 'package:final_project/chat/message_bubble.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'dart:html';

class Messages extends StatelessWidget {
  // var isMe;
  // var message;
  // Messages(this.isMe, this.message);
  //const Messages({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      builder: (ctx, AsyncSnapshot<QuerySnapshot> chatsnapshot) {
        if (chatsnapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        var chatDocs = chatsnapshot.data!.docs;
        //print(chatDocs[0]["text"]);
        return ListView.builder(
            reverse: true,
            padding: EdgeInsets.all(5),
            itemCount: chatDocs.length,
            itemBuilder: ((context, index) => MessageBubble(
                chatDocs[index]['text'],
                chatDocs[index]['userId'] ==
                    FirebaseAuth.instance.currentUser?.uid.toString(),
                chatDocs[index]['username'])));
      },
      stream: FirebaseFirestore.instance
          .collection('chat')
          .orderBy('createdAt', descending: true)
          .snapshots(),
    );
  }
}

//Text(chatDocs[index]["text"])
