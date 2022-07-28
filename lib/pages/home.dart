import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> tasks = [
    "example 1",
    "example 2",
    "example 3",
    "example 4",
    "example 5"
  ];
  final TextEditingController tarefaController = TextEditingController();
  late String iterator;

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
                    onPressed: onPressedAdd,
                    child: const Text("+"),
                  ),
                )
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              for (iterator in tasks)
                ListTile(
                  leading: const Icon(Icons.assignment, size: 24.0),
                  title: Text('Tarefa $iterator'),
                  subtitle: const Text('Tarefa: 20/11/2020'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      // ignore: avoid_print
                      print("delete $iterator");
                    },
                  ),
                  onTap: () {
                    // ignore: avoid_print
                    print(":$iterator");
                  },
                ),
            ],
          ),
        ],
      ),
    );
  }

  void onchangedTarefa(String algomudou) {}
  void onPressedAdd() {
    tarefaController.clear();
  }
}
