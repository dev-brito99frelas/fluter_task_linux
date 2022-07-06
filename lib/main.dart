import 'package:fluter_task_linux/pages/login.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/splash.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
    });
  }
}
