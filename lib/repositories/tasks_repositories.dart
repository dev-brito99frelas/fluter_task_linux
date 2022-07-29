import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/task.dart';
import 'package:fluter_task_linux/models/task.dart';

class TasksRepository {
  late SharedPreferences shared;

  TasksRepository();

  void armazenarDados(List<Task> lista) {
    final String jsonString = json.encode(lista);
    shared.setString('tasks', jsonString);
  }

  Future<List<Task>> recuperarDados() async {
    shared = await SharedPreferences.getInstance();
    final String jsonstring = shared.getString('tasks') ?? '[]';
    final List listdecoded = json.decode(jsonstring) as List;
    return listdecoded.map((e) => Task.fromJson(e)).toList();
  }
}
