import 'package:flutter/material.dart';
import 'package:schedule_widget/src/utils/utilities.dart';

class MothContainer extends StatelessWidget {
  final DateTime date;
  final String locale;
  final Color? color;
  final Color? colorText;

  const MothContainer({Key? key, required this.date, this.color, this.colorText, required this.locale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color ?? const Color(0xFF2EC4B6).withOpacity(0.98),
      ),
      child: Text(
        "${Utilities.nameOfMoth(date, locale)} ${date.year}",
        style: TextStyle(
          color: colorText ?? Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
