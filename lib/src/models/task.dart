import 'package:flutter/widgets.dart';

class Task {
  final DateTime date;
  final String title;
  final String subtitle;

  //actions
  final VoidCallback? onPress;
  final VoidCallback? onLongPress;

  //customization
  final Color? taskCardColor;
  final Color? taskTitleColor;
  final Color? taskSubtitleColor;

  Task({
    required this.date,
    required this.subtitle,
    required this.title,
    this.onPress,
    this.onLongPress,
    this.taskCardColor,
    this.taskTitleColor,
    this.taskSubtitleColor,
  });
}
