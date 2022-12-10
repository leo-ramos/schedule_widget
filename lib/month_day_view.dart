import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:schedule_widget/src/models/task.dart';
import 'package:schedule_widget/src/utils/utilities.dart';
import 'package:schedule_widget/src/widgets/month_container.dart';
import 'package:schedule_widget/src/widgets/task_container.dart';

class MothDayView extends StatelessWidget {

  //actions
  final VoidCallback? onPress;
  final VoidCallback? onLongPress;

  //task
  final List<Task> tasks;
  final Color? taskCardColor;
  final Color? taskTitleColor;
  final Color? taskSubtitleColor;

  //day
  final Color? highlightTextColor;
  final Color? highlightBackgroundColor;
  final Color? textColor;

  //month
  final Color? mothCardColor;
  final Color? mothTextColor;

  final String locale;

  final ScrollController? controller;
  final ScrollPhysics? scrollPhysics;

  const MothDayView({
    Key? key,
    required this.tasks,
    this.taskCardColor,
    this.taskTitleColor,
    this.taskSubtitleColor,
    this.highlightTextColor,
    this.highlightBackgroundColor,
    this.textColor,
    this.mothCardColor,
    this.mothTextColor,
    this.controller,
    this.scrollPhysics,
    this.locale = 'en_US', 
    this.onPress, 
    this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting(locale, null);
    Utilities.sortList(tasks, SortByType.MOTH);
    return ListView.builder(
      itemCount: tasks.length,
      controller: controller,
      physics: scrollPhysics,
      itemBuilder: (context, index) {
        final model = tasks[index];
        return Column(
          children: [
            Visibility(
              visible: index > 0 && tasks[index - 1].date.month != model.date.month,
              child: MothContainer(
                date: model.date,
                color: mothCardColor,
                locale: locale,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Opacity(
                  opacity: index == 0 || tasks[index - 1].date.day != model.date.day ? 1 : 0,
                  child: Column(
                    children: [
                      Text(
                        Utilities.sgWeekName(model.date, locale),
                        style: TextStyle(color: model.date.day == DateTime.now().day ? _highlightBackgroundColor() : _textColor()),
                      ),
                      CircleAvatar(
                        backgroundColor: model.date.day == DateTime.now().day ? _highlightBackgroundColor() : Colors.transparent,
                        child: Text(
                          "${model.date.day}",
                          style: TextStyle(color: model.date.day == DateTime.now().day ? _highlightTextColor() : _textColor()),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: TaskContainer(
                      title: model.title,
                      subtitle: model.subtitle,
                      boxColor: taskCardColor ?? Colors.grey,
                      titleColor: taskTitleColor,
                      subtitleColor: taskSubtitleColor, 
                      onLongPress: onLongPress, 
                      onPress: onPress,
                    ),
                  ),
                )
              ],
            ),
          ],
        );
      },
    );
  }

  Color _highlightBackgroundColor() {
    return highlightBackgroundColor ?? Colors.blue;
  }

  Color _highlightTextColor() {
    return highlightTextColor ?? Colors.white;
  }

  Color _textColor() {
    return textColor ?? Colors.black;
  }
}
