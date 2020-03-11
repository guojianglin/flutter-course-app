import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkboxCallback;
  final Function onLongPressCallback;

  const TaskTile(
      {Key key,
      this.title,
      this.isChecked,
      this.checkboxCallback,
      this.onLongPressCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallback,
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
        value: isChecked,
      ),
    );
  }
}

//void checkboxCallback(bool newState) {
//  setState(() {
//    isChecked = newState;
//  });
//}

//class TaskCheckbox extends StatelessWidget {
//  final bool checkboxState;
//  final Function toggleCheckboxState;
//
//  const TaskCheckbox({
//    Key key,
//    this.checkboxState,
//    this.toggleCheckboxState,
//  }) : super(key: key);
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      activeColor: Colors.lightBlueAccent,
//      onChanged: toggleCheckboxState,
//      value: checkboxState,
//    );
//  }
//}
