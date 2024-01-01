import 'package:flutter/material.dart';
import 'package:gdsctodo/widgets/button.dart';

import 'home_Page.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/stickman_paint.png"),
          Button(
              btn_name: "Get Started",
              onpressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const HomePage()));
              }
          )
        ],
      ),
    );
  }
}
