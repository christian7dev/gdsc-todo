import 'package:flutter/material.dart';


//
//  creating customized Container for the todo list
//


class TodoCards extends StatelessWidget {
  final String logo;
  final String name;
  final String date;
  final int index;
  const TodoCards({super.key, required this.name , required this.date , required this.logo , required this.index});

  @override
  Widget build(BuildContext context) {

    List<Color> colors = [Colors.red , Colors.blue , Colors.yellowAccent , Colors.purple];

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
          boxShadow:const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 0),
              blurRadius: 10
            )
          ]
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 10,),
            CircleAvatar(
              backgroundColor: Colors.white24,
              minRadius: 30,
              child: Center(
                child: Text(
                    logo,
                  style:const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10,),
            SizedBox(
              width: 150,
              child: Center(
                child: Text(
                    name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800
                  ),
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(top: 20.0 , left: 20),
              child: Text(
                  date,
                style: const TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: VerticalDivider(
                thickness: 6,
                color: colors[index%4]
              ),
            ),

          ],
        ),
      ),
    );
  }
}
