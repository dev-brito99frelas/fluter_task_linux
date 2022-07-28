import 'dart:convert';
import 'package:fluter_task_linux/models/task.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TasksRepository {
  late SharedPreferences shared;

  TasksRepository() {
    SharedPreferences.getInstance().then((value) => shared = value);
  }

  void armazenarDados(List<Task> lista) {
    final String jsonString = json.encode(lista);
    // ignore: avoid_print
    print(jsonString);
    shared.setString('tasks', jsonString);
  }

  String recuperarDados() {
    return shared.getString('key').toString();
  }
}
