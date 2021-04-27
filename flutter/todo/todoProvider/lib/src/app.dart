import 'package:flutter/material.dart';
import 'package:todoprovider/src/models/task_data.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData(
          canvasColor: Colors.transparent,
        ),
        home: TaskScreen(),
      ),
    );
  }
}
