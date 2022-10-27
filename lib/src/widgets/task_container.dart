import 'package:flutter/material.dart';

class TaskContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color boxColor;
  final Color? titleColor;
  final Color? subtitleColor;

  const TaskContainer({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.boxColor,
    this.titleColor,
    this.subtitleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(color: boxColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: titleColor),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              subtitle,
              style: TextStyle(
                fontSize: 14.0,
                color: subtitleColor ?? Colors.black54,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
