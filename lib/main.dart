import 'package:flutter/material.dart';
import 'package:rnr_todo_app/screens/home_screen.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

