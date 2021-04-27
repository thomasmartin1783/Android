import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todoprovider/src/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    String finalTaskTitle;

    return Container(
      height: 200,
      // color: Color(0xFF757575),
      // color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
          child: Container(
            padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
            decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Text(
                //   'Add Task',
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //     fontSize: 25.0,
                //     color: Color(0xFF07273d),
                //   ),
                // ),
                TextField(
                  textInputAction: TextInputAction.done,
                  onSubmitted: (value) {
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(finalTaskTitle);
                    Navigator.pop(context);
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.text_fields),
                    hintText: 'Add a Task',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  ),
                  autofocus: true,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w300,
                  ),
                  onChanged: (newText) {
                    finalTaskTitle = newText;
                  },
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextButton(
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(finalTaskTitle);
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF07273d)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.only(top: 10.0, bottom: 10.0))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
