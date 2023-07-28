import 'package:chat_mobile/screens/messages/components/chat_input_field.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        ChatInputField(),
      ],
    );
  }
}