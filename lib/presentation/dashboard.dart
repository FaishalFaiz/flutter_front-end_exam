import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_idn_exam/presentation/course_details.dart';
import 'package:flutter_idn_exam/presentation/widget/card_course.dart';
import 'package:flutter_idn_exam/presentation/widget/cardlist.dart';
import 'package:flutter_idn_exam/presentation/widget/popular_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 8,
          ),
          child: Image.asset(
            "Profile.png",
            fit: BoxFit.cover,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 8),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(Icons.search),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 8),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(Icons.notifications_active),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Do you want to study, \nwhat's today?",
              style: TextStyle(
                fontSize: 24,
                fontFamily: "PoppinsSemiBold",
                height: 1.5,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardCourse(
                    cardImage: "icon_design.svg",
                    cardTitle: "Design",
                    cardCount: "48 Course",
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CardCourse(
                    cardImage: "icon_softskill.svg",
                    cardTitle: "Soft Skills",
                    cardCount: "12 Course",
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CardCourse(
                    cardImage: "icon_art.svg",
                    cardTitle: "Art",
                    cardCount: "50 Course",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Popular Course",
                  style: TextStyle(
                    fontFamily: "PoppinsSemiBold",
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Text(
                  "Show All",
                  style: TextStyle(
                    fontFamily: "PoppinsMedium",
                    fontSize: 14,
                    color: Color(0xff006EEE),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetails(),
                          ));
                    },
                    child: PopularCard(
                      cardTitle: "UI Design : Wireframe \nto Visual Design",
                      cardImage: "Image_1.png",
                    ),
                  ),
                  const SizedBox(width: 16),
                  PopularCard(
                    cardTitle: "UI Design : Styleguide \nwith Figma",
                    cardImage: "Image_2.png",
                  ),
                  const SizedBox(width: 6),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Articles",
                  style: TextStyle(
                    fontFamily: "PoppinsSemiBold",
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Text(
                  "Show All",
                  style: TextStyle(
                    fontFamily: "PoppinsMedium",
                    fontSize: 14,
                    color: Color(0xff006EEE),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            CardList(
              image: "Image_3.png",
              title: "How to : Work Faster as \nFullstack Designer",
              category: "UI Design",
            ),
            const SizedBox(height: 14),
            CardList(
              image: "Image_4.png",
              title: "How to : Digital Art From \nScratch",
              category: "Art Course",
            ),
          ],
        ),
      ),
    );
  }
}
