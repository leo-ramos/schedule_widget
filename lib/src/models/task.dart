import 'package:flutter/widgets.dart';

class Task {
  final DateTime date;
  final String title;
  final String subtitle;

  //actions
  final VoidCallback? onPress;
  final VoidCallback? onLongPress;

  Task({required this.date, required this.subtitle, required this.title, this.onPress,
    this.onLongPress,
  });
}
