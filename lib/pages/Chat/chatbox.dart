import 'package:flutter/material.dart';

class Chatbox extends StatefulWidget {
  const Chatbox({super.key});

  @override
  State<Chatbox> createState() => _ChatboxState();
}

class _ChatboxState extends State<Chatbox> {
  List<ChatMessage> messages = [];

  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 240),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 193, 111),
                borderRadius: BorderRadius.circular(
                    12.0)), // Customize the color as needed
            child: Text(
              'SAARTHI',
              style: TextStyle(
                  fontFamily: 'Samarkan',
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 249, 240)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return messages[index];
              },
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Talk to Saarthi',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send_rounded),
            onPressed: () {
              _sendMessage();
            },
          ),
        ],
      ),
    );
  }

  void _sendMessage() {
    String text = _textController.text;
    if (text.isNotEmpty) {
      setState(() {
        messages.add(ChatMessage(
          text: text,
          isUser: true,
        ));
        // Simulate a response from the chatbot
        messages.add(ChatMessage(
          text:
              'Here is a general list of items you might want to pack: \n 1) Travel and Identification documents \n 2) Winter Clothes \n 3) Basic Essentials (Toothbrush etc.) ',
          isUser: false,
        ));
      });
      _textController.clear();
    }
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isUser;

  ChatMessage({required this.text, required this.isUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: isUser
              ? Color.fromARGB(255, 255, 200, 127)
              : Color.fromARGB(255, 255, 108, 108),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
