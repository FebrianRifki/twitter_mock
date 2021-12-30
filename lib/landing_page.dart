import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:twitter_mock_app/routing_constants.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                    height: 28,
                    width: 28,
                    child: Image.asset(
                        'assets/logo/PNG/2021 Twitter logo - blue.png')),
              ),
            ),
            Spacer(),
            Text(
              "See what's happening in the world right now.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
            Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, loginWithGooglePage),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(
                      height: 35,
                      width: 35,
                      child: Image.asset('assets/google-icon.png')),
                  Text(
                    ' Continue with Google',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.blueGrey,
                      thickness: 0.5,
                    ),
                  ),
                  Text(
                    ' Or ',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.blueGrey,
                      thickness: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, registerPage),
              child: Container(
                margin: EdgeInsets.only(bottom: 25),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.lightBlue),
                child: Center(
                  child: Text(
                    'Create account',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: RichText(
                  text: TextSpan(
                      text: 'By singning up, you agree to our ',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 12),
                      children: [
                    TextSpan(
                        text: 'Terms, Privacy Policy, ',
                        style: TextStyle(color: Colors.blue)),
                    TextSpan(
                        text: 'and ', style: TextStyle(color: Colors.blueGrey)),
                    TextSpan(
                        text: 'Cookie Use.',
                        style: TextStyle(color: Colors.blue)),
                  ])),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Have an account already? ',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, loginPage),
                    child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
