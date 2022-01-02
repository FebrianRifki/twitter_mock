// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twitter_mock_app/routing_constants.dart';

class CommonHomeLayout extends StatefulWidget {
  final List<Widget> children;
  const CommonHomeLayout({required this.children});

  @override
  _CommonHomeLayoutState createState() => _CommonHomeLayoutState();
}

class _CommonHomeLayoutState extends State<CommonHomeLayout> {
  int _selectedIndex = 0;
  SharedPreferences? pref;
  String? fullname;
  String? username;
  String? email;
  String? profilePict;
  @override
  void initState() {
    initPreference().whenComplete(() {
      email = pref!.getString('email');
      profilePict = pref!.getString('imgUrl');
      fullname = pref!.getString('fullName');
      username = pref!.getString('userName');
    });
    super.initState();
  }

  void _onItemTapped(int index) {
    // Navigator.pushNamed(context, landingPage);
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> initPreference() async {
    this.pref = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Divider(
              color: Colors.grey,
            ),
            preferredSize: Size.fromHeight(4.0)),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: CircleAvatar(
                radius: 15,
                backgroundImage:
                    NetworkImage(profilePict != null ? profilePict! : ''),
              ),
            ),
            Image.asset(
              'assets/logo/PNG/2021 Twitter logo - blue.png',
              fit: BoxFit.contain,
              height: 20,
            ),
            Icon(
              Icons.star_outline,
              color: Colors.white,
            )
          ],
        ),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.black,
      body: ListView(children: widget.children),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.white,
          ),
        ]),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          iconSize: 25,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
              ),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star_outline_outlined,
              ),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_outlined,
              ),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.emailOutline,
              ),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
