// import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_mock_app/componen/common_layout.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twitter_mock_app/routing_constants.dart';

class LoginWithGooglePage extends StatefulWidget {
  const LoginWithGooglePage({Key? key}) : super(key: key);

  @override
  _LoginWithGooglePageState createState() => _LoginWithGooglePageState();
}

class _LoginWithGooglePageState extends State<LoginWithGooglePage> {
  bool? data;
  SharedPreferences? pref;
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      data = await showAlert(context);
      if (data == null) {
        print('null');
        Navigator.pop(context);
      } else {
        Navigator.popAndPushNamed(context, homePage);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration.zero, () => showAlert(context));

    return CommonLayout(
        child: Column(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Container(
                height: 30,
                width: 30,
                child: Image.asset(
                    'assets/logo/PNG/2021 Twitter logo - blue.png')),
          ),
        ),
      ],
    ));
  }

  showAlert(BuildContext context) async {
    var result = await showDialog(
        context: context,
        builder: (context) => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Dialog(
                      insetPadding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                              ),
                              child: Image.asset(
                                'assets/logo/PNG/2021 Twitter logo - white.png',
                                fit: BoxFit.contain,
                                height: 25,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text('Choose an account',
                                style: TextStyle(fontSize: 25)),
                            SizedBox(
                              height: 10,
                            ),
                            Text('to continue to Twitter',
                                style: TextStyle(fontSize: 15)),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    pref =
                                        await SharedPreferences.getInstance();
                                    pref!.setString('fullName', 'Edgar Davids');
                                    pref!.setString(
                                        'email', 'edgardavids@gmail.com');
                                    pref!.setString(
                                        'userName', '@edgard_davids');
                                    pref!.setString('imgUrl',
                                        'https://i.pinimg.com/originals/77/65/25/776525c1b655b56415949891e0a521fc.jpg');
                                    Navigator.pop(context, true);
                                  },
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                              radius: 20,
                                              backgroundColor: Colors.grey,
                                              backgroundImage: NetworkImage(
                                                  'https://i.pinimg.com/originals/77/65/25/776525c1b655b56415949891e0a521fc.jpg')),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Edgar Davids',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                'edgardavids@gmail.com',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Divider(color: Colors.grey)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Colors.grey,
                                            backgroundImage: NetworkImage(
                                                'https://menhairstylist.com/wp-content/uploads/2016/10/rugged-dyed-hairstyle-e1535100269385.jpg')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Lugh Tuatha Dé',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              'lughtuathade@gmail.com',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(color: Colors.grey)
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.grey,
                                          backgroundImage: NetworkImage(
                                              'https://i.pinimg.com/236x/50/9b/ea/509bea3f450658a1916d2fa31e101ce3--silver-dyed-hair-white-silver-hair.jpg'),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Dia Viekone',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              'diaviekone@gmail.com',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(color: Colors.grey)
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 12),
                                      child:
                                          Icon(Icons.person_add_alt_outlined),
                                    ),
                                    Text(
                                      'Add Another Account',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(color: Colors.grey)
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                                text: TextSpan(
                                    text:
                                        "To continue, Google will share your name, email address, and profile picture with Twitter. Before using this app, review its ",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                    children: [
                                  TextSpan(
                                      text: 'privacy policy ',
                                      style: TextStyle(color: Colors.blue),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {}),
                                  TextSpan(text: 'and '),
                                  TextSpan(
                                      text: 'terms of service. ',
                                      style: TextStyle(color: Colors.blue),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {}),
                                ]))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
    return result;
  }
}
