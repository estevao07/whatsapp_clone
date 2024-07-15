import 'package:flutter/material.dart';
import 'package:flutter_wpp/CustomUI/CustomCard.dart';
import 'package:flutter_wpp/Model/ChatModel.dart';
import 'package:flutter_wpp/Screens/SelectContact.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key, this.chatmodels, this.sourchat});
  final List<ChatModel>? chatmodels;
  final ChatModel? sourchat;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => const SelectContact()));
        },
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: widget.chatmodels?.length,
        itemBuilder: (contex, index) => CustomCard(
          chatModel: widget.chatmodels?[index],
          sourchat: widget.sourchat,
        ),
      ),
    );
  }
}
