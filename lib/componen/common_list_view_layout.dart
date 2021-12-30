import 'package:flutter/material.dart';

class CommonListViewLayout extends StatefulWidget {
  final List<Widget> children;
  const CommonListViewLayout({required this.children});

  @override
  _CommonListViewLayoutState createState() => _CommonListViewLayoutState();
}

class _CommonListViewLayoutState extends State<CommonListViewLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: widget.children,
      ),
    );
  }
}
