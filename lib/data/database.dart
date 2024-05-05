import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference
  final _myBox = Hive.box('mybox');

  //run method if first time openening this app ever
  void createInitialData() {
    toDoList = [
      ["Did you thank the develeoper?", false],
      ["Вы врете? Я знаю, где вы живете.", false],
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
