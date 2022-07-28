import 'package:fluter_task_linux/models/task.dart';
import 'package:fluter_task_linux/repositories/tasks_repositories.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<Task> tasks = [];
<<<<<<< HEAD
=======
  // final DateTime dataAtual = DateTime.now();
>>>>>>> develop
  final TextEditingController tarefaController = TextEditingController();
  final TasksRepository tasksRepository = TasksRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: const Text('Home'),
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: TextField(
                    controller: tarefaController,
                    decoration: const InputDecoration(
                      labelText: 'Adicione uma tarefa',
                      hintText: "...@estudar typeorm",
                      errorText: null,
                    ),
                    onChanged: onchangedTarefa,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      Task novo = Task(tarefaController.text, "1",
                          "Qualquer descrição", DateTime.now(), "5");
                      setState(() {
<<<<<<< HEAD
                        tasks.add(Task(tarefaController.text, tarefaController.text, tarefaController.text));
                        tasksRepository.armazenarDados(tasks);
                        tarefaController.clear();
=======
                        tasks.add(novo);
>>>>>>> develop
                      });
                      tasksRepository.armazenarDados(tasks);
                      tarefaController.clear();
                    },
                    child: const Text("+"),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              children: [
                for (Task iterator in tasks)
                  ListTile(
                    leading: const Icon(Icons.assignment, size: 24.0),
<<<<<<< HEAD
                    title: Text('Tarefa: ${iterator.nameTask}'),
=======
                    title: Text('Tarefa: ${iterator.name}'),
>>>>>>> develop
                    subtitle: const Text('Tarefa: 20/11/2020'),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        // ignore: avoid_print
<<<<<<< HEAD
                        print("delete : ${iterator.nameTask}");
=======
                        print("delete : ${iterator.name}");
>>>>>>> develop
                      },
                    ),
                    onTap: () {
                      // ignore: avoid_print
<<<<<<< HEAD
                      print(":: ${iterator.nameTask}");
=======
                      print(":: ${iterator.name}");
>>>>>>> develop
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onchangedTarefa(String algomudou) {}
}
