// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardCourse extends StatelessWidget {
  final String cardImage;
  final String cardTitle;
  final String cardCount;
  const CardCourse({
    Key? key,
    required this.cardImage,
    required this.cardTitle,
    required this.cardCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 14,
        left: 18,
        bottom: 12,
        right: 66,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border(),
        color: Color(0xffFFFFFF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            cardImage,
            width: 70,
          ),
          SizedBox(height: 14),
          Text(
            cardTitle,
            style: TextStyle(
              fontFamily: "PoppinsSemiBold",
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            cardCount,
            style: TextStyle(
              fontFamily: "PoppinsMedium",
              fontSize: 16,
              color: Color(0xffA2ADB1),
            ),
          ),
        ],
      ),
    );
  }
}
