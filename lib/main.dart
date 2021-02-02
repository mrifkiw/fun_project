import 'package:flutter/material.dart';
import 'package:fun_project/page/bookmark.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bookmark(),
    );
  }
}
