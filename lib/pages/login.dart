import 'package:fluter_task_linux/pages/home.dart';
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.account_circle,
            color: Colors.yellow[700],
            size: 180.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 70.0,
            ),
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
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 70.0,
            ),
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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow[700],
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 70.0,
              ),
            ),
            onPressed: onElevatedPressed,
            child: const Text("Login"),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: onPressedTBEsqueceu,
                child: const Text("Esqueceu senha"),
              ),
              const SizedBox(width: 100),
              TextButton(
                onPressed: onPressedTBCadastre,
                child: const Text("Cadastre-se"),
              ),
            ],
          )
        ],
      ),
    );
  }

  void onElevatedPressed() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Home()));
  }

  void onchangedContext(String dado) {}

  void onchangedContextPassword(String dado) {}
  void onPressedTBEsqueceu() {}
  void onPressedTBCadastre() {}
}
