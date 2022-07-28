class Task {
  String _name;
  // ignore: non_constant_identifier_names
  String _task_id;
  late String _description;
  late DateTime _deadline;
  // ignore: non_constant_identifier_names
  String _student_id;


  Task(this._name, this._task_id, this._student_id);
  Task.fromJson(Map<String,dynamic> json): _name = json['_name'], _task_id= json['_task_id'], _student_id= json['_student_id'];
  Map<String, dynamic> toJson() {

    return {
      'name': _name,
      'task_id': _task_id,
      'description': _description,
      'deadline': _deadline.toIso8601String(),
      'student_id': _student_id,
    };
  }

  String get studentId => _student_id;

  set addStudentId(String value) {
    _student_id = value;
  }

  DateTime get deadLine => _deadline;

  set addDeadline(DateTime value) {
    _deadline = value;
  }

  String get addDescription => _description;

  set description(String value) {
    _description = value;
  }

  String get addTaskId => _task_id;

  set taskId(String value) {
    _task_id = value;
  }

  String get nameTask => _name;

  set name(String value) {
    _name = value;
  }
}
