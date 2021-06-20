import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/models/theme.dart';
import 'screens/tasks_screen.dart';
import 'package:todoey_flutter/models/task_data.dart';

void main() {
  runApp(ChangeNotifierProvider(
  create: (BuildContext context) => ThemeProvider(isDarkMode:true),
  child: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}