class Task {
  String _name;
<<<<<<< HEAD
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
=======
  String _taskId;
  String _description;
  DateTime _deadline;
  String _studentId;

  Task(this._name, this._taskId, this._description, this._deadline,
      this._studentId);

  Task.fromJson(Map<String, dynamic> json)
      : _name = json['_name'],
        _taskId = json['_taskId'],
        _description = json['_description'],
        _deadline = json['_deadline'],
        _studentId = json['_studentId'];

  Map<String, dynamic> toJson() {
    return {
      'name': _name,
      'taskId': _taskId,
      'description': _description,
      'deadline': _deadline.toIso8601String(),
      'studentId': _studentId,
    };
  }

  String get studentId => _studentId;

  set addStudentId(String value) {
    _studentId = value;
>>>>>>> develop
  }

  DateTime get deadLine => _deadline;

  set addDeadline(DateTime value) {
    _deadline = value;
  }

<<<<<<< HEAD
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
=======
  String get description => _description;

  set addDescription(String value) {
    _description = value;
  }

  String get taskId => _taskId;

  set addTaskId(String value) {
    _taskId = value;
  }

  String get name => _name;

  set addName(String value) {
>>>>>>> develop
    _name = value;
  }
}
