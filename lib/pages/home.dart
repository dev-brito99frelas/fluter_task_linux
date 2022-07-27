import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> tarefas = [];
  final TextEditingController tarefaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: const Text('Home'),
      ),
      drawer: const Drawer(),
      body: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            title: const Text('Tarefa '),
            subtitle: const Text('Tarefa: 20/11/2020'),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {},
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
