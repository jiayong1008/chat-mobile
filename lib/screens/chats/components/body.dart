import 'package:chat_mobile/components/filled_outline_button.dart';
import 'package:chat_mobile/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
            kDefaultPadding, 0, kDefaultPadding, kDefaultPadding
          ),
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
            itemBuilder: (context, index) => Text("Test"),
          ),
        ),
      ],
    );
  }
}