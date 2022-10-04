import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  String message;
  var isMe;
  String username;
  MessageBubble(this.message, this.isMe, this.username);
  //const MessageBubble({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: isMe ? Colors.orange : Colors.orange[700],
            borderRadius: BorderRadius.circular(12),
          ),
          width: 140,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(6),
          child: Column(
            children: [
              Text(
                username,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                message,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
