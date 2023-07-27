import 'package:chat_mobile/components/filled_outline_button.dart';
import 'package:chat_mobile/constants.dart';
import 'package:chat_mobile/models/Chat.dart';
import 'package:chat_mobile/screens/chats/components/chat_card.dart';
import 'package:chat_mobile/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(
                press: () {},
                text: "Recent Message",
              ),
              SizedBox(width: kDefaultPadding),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MessagesScreen()));
              },
            ),
          ),
        ),
      ],
    );
  }
}
