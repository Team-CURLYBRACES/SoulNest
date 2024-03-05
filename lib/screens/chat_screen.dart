import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: ChatPage(),
));

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(0, 32, 111, 1),
              Color.fromRGBO(27, 143, 199, 1)]
          )
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
          child: Column(
            children: [
              Text('ChatBot')
            ],
          ),
        )
      ),
    );
  }
}
