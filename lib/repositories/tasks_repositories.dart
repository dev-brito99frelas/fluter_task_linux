import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import '../models/task.dart';

class TasksRepository {
  late SharedPreferences shared;

  TasksRepository() {
    SharedPreferences.getInstance().then((value) => shared = value);
  }

  void armazenarDados(List<Task> lista) {
    final jsonString = json.encode(lista);
    shared.setString('Tasks', jsonString);
  }

  String recuperarDados() {
    return shared.getString('key').toString();
  }
}
