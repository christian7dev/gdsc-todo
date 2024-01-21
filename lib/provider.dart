import 'package:flutter/material.dart';
import 'model.dart';


class TodoListProvider extends ChangeNotifier {
  List<TodoList> todoModels = [];

  void addTodoModel(TodoList todoModel) {
    todoModels.add(todoModel);
    notifyListeners();
  }
}