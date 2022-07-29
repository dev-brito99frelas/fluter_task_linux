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
  final TextEditingController tarefaController = TextEditingController();
  final TasksRepository tasksRepository = TasksRepository();

  @override
  void initState() {
    super.initState();
    tasksRepository.recuperarDados().then((value) => {
          setState((() {
            tasks = value;
          }))
        });
  }

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
                        tasks.add(novo);
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
                    title: Text('Tarefa: ${iterator.name}'),
                    subtitle: const Text('Tarefa: 20/11/2020'),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          tasks.remove(iterator);
                        });
                        // ignore: avoid_print
                        print("delete : ${iterator.name}");
                        tasksRepository.armazenarDados(tasks);
                      },
                    ),
                    onTap: () {
                      // ignore: avoid_print
                      print(":: ${iterator.name}");
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
