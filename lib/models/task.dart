class Task {
  String _name;
  String _taskId;
  String _description;
  DateTime _deadline;
  String _studentId;

  Task(this._name, this._taskId, this._description, this._deadline,
      this._studentId);

  //outro construtor para pegar dados json e transformar em Objeto
  Task.fromJson(Map<String, dynamic> json)
      : _name = json['name'].toString(),
        _taskId = json['taskId'].toString(),
        _description = json['description'].toString(),
        _deadline = DateTime.parse(json['deadline'].toString()),
        _studentId = json['studentId'].toString();

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
  }

  DateTime get deadLine => _deadline;

  set addDeadline(DateTime value) {
    _deadline = value;
  }

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
    _name = value;
  }
}
