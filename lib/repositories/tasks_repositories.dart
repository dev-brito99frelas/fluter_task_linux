import 'dart:convert';
<<<<<<< HEAD

import 'package:shared_preferences/shared_preferences.dart';
import '../models/task.dart';
=======
import 'package:fluter_task_linux/models/task.dart';
import 'package:shared_preferences/shared_preferences.dart';
>>>>>>> develop

class TasksRepository {
  late SharedPreferences shared;

  TasksRepository() {
    SharedPreferences.getInstance().then((value) => shared = value);
  }

  void armazenarDados(List<Task> lista) {
<<<<<<< HEAD
    final jsonString = json.encode(lista);
    shared.setString('Tasks', jsonString);
=======
    final String jsonString = json.encode(lista);
    // ignore: avoid_print
    print(jsonString);
    shared.setString('tasks', jsonString);
>>>>>>> develop
  }

  String recuperarDados() {
    return shared.getString('key').toString();
  }
}
