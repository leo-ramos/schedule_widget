import 'package:intl/intl.dart';
import 'package:schedule_widget/src/models/task.dart';

class Utilities {
  static List<Task> sortList(List<Task> tasks, SortByType type) {
    switch (type) {
      case SortByType.DAY:
        tasks.sort((a, b) => a.date.day.compareTo(b.date.day));
        break;
      case SortByType.MOTH:
        tasks.sort((a, b) => a.date.day.compareTo(b.date.day));
        tasks.sort((a, b) => a.date.month.compareTo(b.date.month));
        break;

      default:
        tasks.sort((a, b) => a.date.day.compareTo(b.date.day));
        break;
    }
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
