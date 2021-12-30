import 'package:flutter/material.dart';

class CommonLayout extends StatefulWidget {
  final Widget child;
  const CommonLayout({required this.child});

  @override
  _CommonLayoutState createState() => _CommonLayoutState();
}

class _CommonLayoutState extends State<CommonLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: widget.child,
        ));
  }
}
