import 'package:flutter/material.dart';
import 'package:untitled/authBottomSheetDailogue.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/bg_img.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: Text(
                  "Chain of Deeds",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .07,
                      color: Colors.white,
                      wordSpacing: -3,
                      fontFamily: 'TypoGraphica'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01),
                child: Image.asset(
                  "assets/logo.png",
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1),
                child: Text(
                  "Join the Movement Changing the World",
                  style: TextStyle(
                      color: Colors.white,
                      wordSpacing: -3,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontFamily: 'TypoGraphica'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: MaterialButton(
                  elevation: 0,
                  onPressed: () {
                    AuthBottomSheetDialogue().show(context,
                        text0: 'Sign in',
                        text1: 'Continue with Apple',
                        text2: 'Continue with Google',
                        text3: 'Sign Up with your e-mail');

                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color(0xFFFFD319),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Center(
                        child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.033,
                        color: Colors.black,
                        fontFamily: 'BG Flame Bold',
                      ),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: MaterialButton(
                  elevation: 0,

                  shape: RoundedRectangleBorder(
                      side:const BorderSide(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    AuthBottomSheetDialogue().show(
                        context,
                        text0: 'Log in with',
                        text1: 'Continue with Apple',
                        text2: 'Continue with Google',
                        text3: 'Log in with your e-mail');
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.033,
                            color: Colors.white,
                            fontFamily: 'BG Flame Bold'),

                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
