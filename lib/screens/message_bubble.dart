import 'package:flutter/material.dart';

class MessageBubble extends StatefulWidget {
  final List messages;
  const MessageBubble({super.key, required this.messages});

  @override
  State<MessageBubble> createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ListView.separated(
        itemBuilder: (context, index){
          return Container(
            margin: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: widget.messages[index]["isUserMessage"] ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: widget.messages[index]["isUserMessage"] ? Colors.blue[900] : Colors.white,
                  ),
                  child: Text(
                    widget.messages[index]["message"].text.text[0]
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Padding(padding: EdgeInsets.only(top: 10.0));
        },
        itemCount: widget.messages.length);
  }
}
