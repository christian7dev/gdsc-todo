import 'package:flutter/material.dart';
import 'package:gdsctodo/widgets/button.dart';


class TaskCreator extends StatefulWidget {
  const TaskCreator({super.key});

  @override
  State<TaskCreator> createState() => _TaskCreatorState();
}

class _TaskCreatorState extends State<TaskCreator> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final title = TextEditingController();
  final description = TextEditingController();
  late DateTime dto;
  var to = "";
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
          "Create New Task",
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key:  _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title name
                const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      "Main Task Name",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Title Required";
                      }
                    },
                    controller: title,
                    decoration: InputDecoration(
                      hintText: "Title",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                ),

                //date
                const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Due Date",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () async {
                            final DateTime? picked1 = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2022),
                              lastDate: DateTime(2100),
                            );
                            setState(() {
                              dto = picked1!;
                              to = "${picked1.day}-${picked1.month}-${picked1.year}";
                            });
                            },
                          child:const Icon(
                            Icons.date_range,

                          ),
                    ),
                    Text(
                      " : $to",
                      style:const TextStyle(
                          fontSize: 20
                      ),
                    ),
              ],
            ),
                  ),
                ),

                //description
                const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: description,
                    validator: (value){
                      if( value == null || value.isEmpty){
                        return "Description Required";
                      }
                    },
                    minLines: 3,
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: "Description",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Center(
                  child: Button(
                      btn_name: "ADD Task",
                      onpressed: (){
                        if(_formKey.currentState!.validate()){
                          Navigator.of(context).pop();
                        }
                      }
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
