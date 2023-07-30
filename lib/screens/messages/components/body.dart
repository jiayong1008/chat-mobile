import 'package:chat_mobile/constants.dart';
import 'package:chat_mobile/models/ChatMessage.dart';
import 'package:chat_mobile/screens/messages/components/chat_input_field.dart';
import 'package:chat_mobile/screens/messages/components/message.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demoChatMessages.length,
              itemBuilder: (BuildContext context, int index) => 
                Message(message: demoChatMessages[index],),
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}