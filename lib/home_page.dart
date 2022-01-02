import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
                      backgroundImage: NetworkImage(
                          'https://static.wikia.nocookie.net/codegeass/images/6/6a/LelouchviBritannia.jpg/revision/latest/scale-to-width-down/1000?cb=20120107132514')),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Lelouch Lamperouge',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '@Lelouch · 10h',
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
                                MdiIcons.chatOutline,
                                size: 20,
                                color: Colors.grey,
                              ),
                              Spacer(),
                              Icon(
                                MdiIcons.repeatVariant,
                                color: Colors.grey,
                                size: 25,
                              ),
                              Spacer(),
                              Icon(
                                MdiIcons.heartOutline,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                                size: 20,
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
                    backgroundImage: NetworkImage(
                        'https://cdn.idntimes.com/content-images/community/2020/04/4862-f54bf213073e9d3dc44e13fcfa7d0a03_600x400.jpg'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Yui Yoshioka',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '@yuiyoshioka · 3h',
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
                                MdiIcons.chatOutline,
                                size: 20,
                                color: Colors.grey,
                              ),
                              Spacer(),
                              Icon(
                                MdiIcons.repeatVariant,
                                color: Colors.grey,
                                size: 25,
                              ),
                              Spacer(),
                              Icon(
                                MdiIcons.heartOutline,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                                size: 20,
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
                    backgroundImage: NetworkImage(
                        'https://cdn.idntimes.com/content-images/community/2021/07/annin-keriting-14ed8d4b1242b4be186fcf6f2977b211-87df67626fa15c0382f7980462bc1514.jpg'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Iriyama Anna',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '@iriyamaa1203 · 4h',
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
                                MdiIcons.chatOutline,
                                size: 20,
                                color: Colors.grey,
                              ),
                              Spacer(),
                              Icon(
                                MdiIcons.repeatVariant,
                                color: Colors.grey,
                                size: 25,
                              ),
                              Spacer(),
                              Icon(
                                MdiIcons.heartOutline,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                                size: 20,
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
                    backgroundImage: NetworkImage(
                        'https://cdn.idntimes.com/content-images/post/20211004/cloud-3-fe8fe4e3ea280431490d829d39eafe21.jpg'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Cloud Strife',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '@CloudStrife · 2h',
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
                                MdiIcons.chatOutline,
                                size: 20,
                                color: Colors.grey,
                              ),
                              Spacer(),
                              Icon(
                                MdiIcons.repeatVariant,
                                color: Colors.grey,
                                size: 25,
                              ),
                              Spacer(),
                              Icon(
                                MdiIcons.heartOutline,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                                size: 20,
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
                      backgroundImage: NetworkImage(
                          'https://cdn.anisearch.com/images/character/cover/full/70/70000.webp')),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Rindō Kobayashi',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '@kobayasi · 6h',
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
                                MdiIcons.chatOutline,
                                size: 20,
                                color: Colors.grey,
                              ),
                              Spacer(),
                              Icon(
                                MdiIcons.repeatVariant,
                                color: Colors.grey,
                                size: 25,
                              ),
                              Spacer(),
                              Icon(
                                MdiIcons.heartOutline,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                                size: 20,
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
          padding:
              const EdgeInsets.only(left: 15.0, right: 15.0, top: 5, bottom: 5),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        'https://aramajapan.com/wp-content/uploads/2020/11/aramajapan.com-tomohisa-yamashita-has-left-johnnys-tomohisa-yamashita-has-left-johnnys.jpg'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Tomohisa Yamashita',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '@Yamaken · 8h',
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
                                MdiIcons.chatOutline,
                                size: 20,
                                color: Colors.grey,
                              ),
                              Spacer(),
                              Icon(
                                MdiIcons.repeatVariant,
                                color: Colors.grey,
                                size: 25,
                              ),
                              Spacer(),
                              Icon(
                                MdiIcons.heartOutline,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                                size: 20,
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
