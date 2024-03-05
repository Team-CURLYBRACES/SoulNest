import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();
  List< Map<String, dynamic> > messages = [];

  @override
  void initState() {
    super.initState();
      DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(0, 32, 111, 1),
              Color.fromRGBO(27, 143, 199, 1)
            ]
          )
        ),
        child: Column(
          children: [
            // For the messages sent between bot and user
            Container(
              child: Text('gyaaaattt'),
            ),
            // For the messages that the user sends
            Container(
              color: Colors.blue[900],
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child: TextField(
                        controller: _controller,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: (){
                        sendMessage(_controller.text);
                        _controller.clear();
                      },
                      icon: const Icon(
                          Icons.send,
                        color: Colors.white,
                      )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  sendMessage(String text) async {
    if (text.isEmpty) {
      print('Message is empty');
    }
    else {
      setState(() {
        addMessage(Message(text: DialogText(text: [text])), true);
      });
    }

    DetectIntentResponse response = await dialogFlowtter.detectIntent(
        queryInput: QueryInput(text: TextInput(text: text)));
    if (response.message == null) {
      return;
    }
    else {
      addMessage(Message(text: DialogText(text: [text])));
    }
  }

  addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({"message":message, "isUserMessage": isUserMessage});
  }
}