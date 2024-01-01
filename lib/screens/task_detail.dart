import 'package:flutter/material.dart';


class TaskDetailPage extends StatelessWidget {
  String title;
  String description;
  String deadline;
  TaskDetailPage({super.key , required this.title , required this.description , required this.deadline});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme:const IconThemeData(
            color: Colors.black
        ),
        elevation: 0,
        title:const Text(
          "Todo Detail",
          style: TextStyle(
              color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                  height: 200,
                  child: Image.asset("assets/todo_list.png"),
              ),
            ),

            const SizedBox(height: 20,),

            //title
            const Text(
                "Title",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: 350,
              color: Colors.grey.shade300,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                      title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),
                  ),
                )),
            const SizedBox(height: 20,),

            //description
            const Text(
                "Description",
              style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 150,
              width: 350,
              color: Colors.grey.shade300,
                child: const Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                      "Description",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                )),
            const SizedBox(height: 20,),

            //deadline
            const Text(
                "Deadline",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 10,),
            Container(
                width: 350,
                color: Colors.grey.shade300,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                      deadline,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
