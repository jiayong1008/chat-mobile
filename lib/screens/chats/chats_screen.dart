import 'package:chat_mobile/screens/chats/components/body.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text("Chats"), 
      actions: [
        IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.search),
        ),
      ],
    );
  }
}