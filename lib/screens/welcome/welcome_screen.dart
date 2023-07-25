import 'package:chat_mobile/constants.dart';
import 'package:chat_mobile/screens/signInOrSignUp/signin_or_signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Spacer(flex: 2,),
          Image.asset("assets/images/welcome_image.png"),
          Spacer(flex: 3,),
          Text(
            "Welcome to our freedom \nmessaging app",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            "Freedom talk any person of your\nmother language.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.64)),
          ),
          Spacer(flex: 3,),
          FittedBox(
            child: TextButton(
              onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => SigninOrSignupScreen())
              ), 
              child: Row(
                children: [
                  Text(
                    "Skip", 
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(width: kDefaultPadding / 4),
                  Icon(
                    Icons.arrow_forward_ios, 
                    size: 16,
                    color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.8),
                  ),
              ],),
            ),
          ),
        ],
      )),
    );
  }
}