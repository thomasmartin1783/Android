import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todoprovider/src/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({
    this.isChecked,
    this.taskTitle,
    this.checkboxCallback,
    this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      // contentPadding: EdgeInsets.zero,
      title: Text(
        taskTitle,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w300,
          fontSize: 20.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: isChecked ? Colors.grey : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Color(0xFF07273d),
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
