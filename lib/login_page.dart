import 'package:flutter/material.dart';

import 'componen/common_layout.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return CommonLayout(
        child: Padding(
      padding: const EdgeInsets.only(
          top: 40.0, left: 15.0, bottom: 15.0, right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.close,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                    height: 28,
                    width: 28,
                    child: Image.asset(
                        'assets/logo/PNG/2021 Twitter logo - blue.png')),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            child: Text(
              'To get started, first enter your phone , email, or @username',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Phone, email, or username',
              hintStyle: TextStyle(color: Colors.grey),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
          Spacer(),
          Column(
            children: [
              Divider(
                color: Colors.grey,
                thickness: 0.25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white)),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    width: 75,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white)),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
