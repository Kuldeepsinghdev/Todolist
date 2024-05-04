import 'package:flutter/material.dart';
import 'package:rnr_todo_app/screens/sing_up.dart';
import 'package:rnr_todo_app/screens/login.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool a = true;
  void to() {
    setState(() {
      a = !a;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (a) {
      return LogScreen(to);
    } else {
      return SignUpScreen(to);
    }
  }
}