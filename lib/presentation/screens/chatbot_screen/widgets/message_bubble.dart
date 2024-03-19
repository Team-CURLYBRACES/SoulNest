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
    return ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: widget.messages[index]["isUserMessage"]
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: widget.messages[index]["isUserMessage"]
                      ? const Color.fromARGB(255, 0, 119, 203)
                      : Colors.white,
                ),
                child: Text(
                  widget.messages[index]["message"].text.text[0],
                  style: TextStyle(
                    color: widget.messages[index]["isUserMessage"]
                        ? Colors.white // Set text color to white for blue box
                        : Colors.black, // Set text color to black for white box
                  ),
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const Padding(padding: EdgeInsets.only(top: 10.0));
        },
        itemCount: widget.messages.length);
  }
}
