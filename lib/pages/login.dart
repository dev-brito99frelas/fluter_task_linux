import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Text("Bem vindo a pagina de login"),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'E-mail',
                hintText: "exemplo@gmail.com",
                errorText: null,
              ),
              onChanged: onchangedContext,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              controller: senhaController,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: "Exam#Ple@8376%",
                errorText: null,
              ),
              obscureText: true,
              onChanged: onchangedContextPassword,
            ),
          ),
        ],
      ),
    );
  }

  void onchangedContext(String dado) {}

  void onchangedContextPassword(String dado) {}
}
