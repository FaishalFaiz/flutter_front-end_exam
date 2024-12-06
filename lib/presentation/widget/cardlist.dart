import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final String image;
  final String title;
  final String category;

  CardList({
    required this.image,
    required this.title,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Row(
        children: [
          // Gambar
          Image.asset(
            image,
            fit: BoxFit.cover,
            width: 120,
          ),
          const SizedBox(width: 14),
          // text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "PoppinsSemiBold",
                ),
              ),
              Text(
                category,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "PoppinsMedium",
                  color: Color(0xffA2ADB1),
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.favorite),
          const SizedBox(width: 24),
        ],
      ),
    );
  }
}
