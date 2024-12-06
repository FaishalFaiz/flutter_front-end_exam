// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularCard extends StatelessWidget {
  final String cardTitle;
  final String cardImage;
  const PopularCard({
    Key? key,
    required this.cardTitle,
    required this.cardImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            cardImage,
            width: 250,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Free",
              style: TextStyle(
                fontFamily: "PoppinsSemiBold",
                fontSize: 18,
                color: Color(0xff22B07D),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              cardTitle,
              style: TextStyle(
                fontFamily: "PoppinsSemiBold",
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: SvgPicture.asset("ratting.svg", width: 160),
          ),
        ],
      ),
    );
  }
}
