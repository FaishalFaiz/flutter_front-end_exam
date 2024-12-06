// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CourseTimeLine extends StatelessWidget {
  final String number;
  final String title;
  final String time;
  const CourseTimeLine({
    Key? key,
    required this.number,
    required this.title,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 9,
          ),
          decoration: BoxDecoration(
            color: Color(0xffD1E2FD),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Text(
            number,
            style: TextStyle(
              fontFamily: "PoppinsSemiBold",
              color: Color(0xff006EEE),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: "PoppinsMedium",
                fontSize: 16,
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontFamily: "PoppinsMedium",
                fontSize: 16,
                color: Color(0xffA2ADB1),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
