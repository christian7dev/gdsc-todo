import 'package:flutter/material.dart';

// creating customized button using
// container widget and InkWell to make the container do task when it is pressed
//


class Button extends StatelessWidget {
  String btn_name;
  final VoidCallback onpressed ;
   Button({super.key , required this.btn_name , required this.onpressed});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onpressed,
      child: Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 0),
              blurRadius: 5
            )
          ]
        ),
        child: Center(
          child: Text(
            btn_name,
            style:const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
