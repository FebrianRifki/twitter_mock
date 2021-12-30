import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twitter_mock_app/componen/common_home_layout.dart';
import 'package:twitter_mock_app/componen/common_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  SharedPreferences? pref;
  String? fullname;
  String? username;
  String? email;
  String? profilePict;
  int $middot = 0x00B7;
  @override
  void initState() {
    initPreference().whenComplete(() {
      email = pref!.getString('email');
      profilePict = pref!.getString('imgUrl');
      fullname = pref!.getString('fullName');
      username = pref!.getString('userName');
      setState(() {});
    });
    super.initState();
  }

  Future<void> initPreference() async {
    this.pref = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CommonHomeLayout(children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Random Guy 1',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '@randomNiceGuy - 10h',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                                size: 14,
                              )
                            ],
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.mode_comment_rounded,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(),
                              Icon(
                                Icons.refresh_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer(),
                              Icon(
                                Icons.link_rounded,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer()
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Random Guy 2',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '@randomNiceGuy - 3h',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                                size: 14,
                              )
                            ],
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.mode_comment_rounded,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(),
                              Icon(
                                Icons.refresh_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer(),
                              Icon(
                                Icons.link_rounded,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer()
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Random Guy 3',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '@randomNiceGuy - 4h',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                                size: 14,
                              )
                            ],
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.mode_comment_rounded,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(),
                              Icon(
                                Icons.refresh_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer(),
                              Icon(
                                Icons.link_rounded,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer()
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Random Guy 4',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '@randomNiceGuy - 2h',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                                size: 14,
                              )
                            ],
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.mode_comment_rounded,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(),
                              Icon(
                                Icons.refresh_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer(),
                              Icon(
                                Icons.link_rounded,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer()
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Random Guy 5',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '@randomNiceGuy - 6h',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                                size: 14,
                              )
                            ],
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.mode_comment_rounded,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(),
                              Icon(
                                Icons.refresh_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer(),
                              Icon(
                                Icons.link_rounded,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer()
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Random Guy 6',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '@randomNiceGuy - 8h',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                                size: 14,
                              )
                            ],
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.mode_comment_rounded,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(),
                              Icon(
                                Icons.refresh_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer(),
                              Icon(
                                Icons.link_rounded,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Spacer()
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
      ]),
      Positioned(
        right: 20,
        bottom: 60,
        child: FloatingActionButton(
          onPressed: () {},
          child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              child: Icon(
                Icons.add,
                size: 30,
              )),
        ),
      )
    ]);
  }
}
