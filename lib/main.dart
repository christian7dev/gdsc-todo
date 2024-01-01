import 'package:flutter/material.dart';
import 'package:gdsctodo/screens/landing_Page.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "TODO APP",
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
