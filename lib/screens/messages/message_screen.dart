import 'package:chat_mobile/constants.dart';
import 'package:chat_mobile/screens/messages/components/body.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

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
      title: const Row(
        children: [
          BackButton(),
          CircleAvatar(backgroundImage: AssetImage("assets/images/user_2.png"),),
          SizedBox(width: kDefaultPadding,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Kristin Watson", style: TextStyle(fontSize: 16),),
              Text("Active 3m ago", style: TextStyle(fontSize: 12),),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.local_phone)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
        const SizedBox(width: kDefaultPadding / 2,),
      ],
    );
  }
}