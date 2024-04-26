import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        backgroundColor: const Color.fromARGB(255, 122, 34, 217),
      ),
      body:
      const Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          
        ),
      )
    );
  }
}