import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rnr_todo_app/const/colors.dart';
import 'package:rnr_todo_app/screens/add_note.dart';
import 'package:rnr_todo_app/widgets/stream_note.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool show = true;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColors,
      floatingActionButton: Visibility(
        visible: show,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const AddNoteScreen(),
            ));
          },
          backgroundColor: customGreen,
          child: const Icon(Icons.add, size: 30),
        ),
      ),
      body: SafeArea(
        child: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            if (notification.direction == ScrollDirection.forward) {
              setState(() {
                show = true;
              });
            }
            if (notification.direction == ScrollDirection.reverse) {
              setState(() {
                show = false;
              });
            }
            return true;
          },
          child: Column(
            children: [
              Stream_note(false),
              Text(
                'isDone',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold),
              ),
              Stream_note(true),
            ],
          ),
        ),
      ),
    );
  }
}
