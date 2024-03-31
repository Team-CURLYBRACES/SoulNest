import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'message_bubble.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late String _id = '';
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    super.initState();
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
    _loadID();
  }

  @override
  Widget build(BuildContext context) {
    log("hi$_id");
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(0, 32, 111, 1),
          Color.fromRGBO(27, 143, 199, 1)
        ])),
        child: Column(
          children: [
            // For the messages sent between bot and user
            Expanded(
                child: MessageBubble(
              messages: messages,
            )),

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
                        sendPromptToDB(_controller.text, _id);
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
    );
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

    String url = "https://a42d-112-134-149-196.ngrok-free.app/users/update_chat/";
      Map<String, dynamic> data = {"text": text, "is_stress_checked": false};
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

  Future<void> _loadID() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('id');
    if (token != null) {
      setState(() {
        _id = token; 
      });
    }
  }
}
