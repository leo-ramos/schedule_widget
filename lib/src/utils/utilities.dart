import 'package:intl/intl.dart';
import 'package:schedule_widget/src/models/task.dart';

class Utilities {
  static List<Task> sortList(List<Task> tasks, SortByType type) {
    tasks.sort((a, b) => a.date.compareTo(b.date));
    return tasks;
  }

  static String sgWeekName(DateTime date, String locale) {
    return DateFormat('EEE', locale).format(date).capitalize();
  }

  static String nameOfMoth(DateTime date, String locale) {
    return DateFormat('MMMM', locale).format(date).capitalize();
  }
}

enum SortByType { DAY, MOTH }

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
