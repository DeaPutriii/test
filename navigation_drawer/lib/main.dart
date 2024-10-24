import 'package:flutter/material.dart';
import 'package:navigation_drawer/navigation_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // ignore: constant_identifier_names
  static const Header = 'Classroom';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: Header,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: Header),
    );
  }
}