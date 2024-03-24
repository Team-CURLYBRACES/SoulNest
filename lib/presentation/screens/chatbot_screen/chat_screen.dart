import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'message_bubble.dart';
import 'package:logger/logger.dart';

class ChatScreen extends StatefulWidget {
  final String? token;
  const ChatScreen({Key? key, this.token}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    super.initState();
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
  }

  @override
  Widget build(BuildContext context) {
    final logger = Logger();
    logger.d(widget.token);
    String token = widget.token as String;
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(0, 31, 110, 1),
            Color.fromRGBO(31, 159, 212, 1)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.009, left: 20, right: 20),
        child: Column(
          children: [
            // For the messages sent between bot and user
            Expanded(
              child: MessageBubble(
                messages: messages,
              ),
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
                          color: Colors.white),
                      child: TextField(
                        controller: _controller,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        sendMessage(_controller.text);
                        sendPromptToDB(_controller.text, token);
                        _controller.clear();
                      },
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  sendMessage(String text) async {
    if (text.isEmpty) {
      print('Message is empty');
    } else {
      setState(() {
        addMessage(Message(text: DialogText(text: [text])), true);
      });
    }

    DetectIntentResponse response = await dialogFlowtter.detectIntent(
        queryInput: QueryInput(text: TextInput(text: text)));
    if (response.message == null) {
      return;
    } else {
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({"message": message, "isUserMessage": isUserMessage});
  }

  sendPromptToDB(String text, String token) {
    String url =
        "https://801c-112-134-146-67.ngrok-free.app/users/update_chat/";
    Map<String, dynamic> data = {"text": text, "is_stress_checked": "false"};
    String jsonData = jsonEncode(data);

    final response = http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonData,
    );
  }
}
