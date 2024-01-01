import 'package:flutter/material.dart';
import 'package:gdsctodo/model.dart';
import 'package:gdsctodo/screens/task_creator.dart';
import 'package:gdsctodo/screens/task_detail.dart';
import 'package:gdsctodo/widgets/button.dart';
import 'package:gdsctodo/widgets/cards.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      //AppBar
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme:const IconThemeData(
          color: Colors.black
        ),
        elevation: 0,
        title:const Text(
          "Todo List",
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
              height: 200,
              child: Image.asset(
                  "assets/stickman_todo.png",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
                "TASKS",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(
            height: 350,
            child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context , index){
                  return  InkWell(
                    onTap: (){
                      //
                      //Navigating to another page /screens/task_detail.dart by passing parameters which is required in TaskDetailPage
                      //
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => TaskDetailPage(
                        title:  todos[index].taskname,
                        description: todos[index].description,
                        deadline: todos[index].date,
                      )));
                    },

                    //
                    // using custom to do lists which we create it in /widgets/cards.dart
                    //
                    child: TodoCards(
                      index: index,
                      name: todos[index].taskname,
                      date: todos[index].date,
                      logo: todos[index].taskname[0],
                    ),
                  );
                }),
          ),
          Center(child: Button(
              btn_name: "Create Task",
              onpressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TaskCreator()));
              })),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
