import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Chats"), 
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.search)
          ),
        ],
      ),
    );
  }
}