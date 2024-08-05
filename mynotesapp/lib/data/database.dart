import 'package:hive/hive.dart';

class ToDoDataBase {

  List toDoList = [];

  final _myBox = Hive.box('myBox');

  // run this metdho wen first time opening this app
  void createInitialData(){
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

// load data from dtabase
void loadData() {
  toDoList = _myBox.get("TODOLIST");
}

// update datbase
void updateDatabase() {
  _myBox.put("TODOLIST", toDoList);
}
}