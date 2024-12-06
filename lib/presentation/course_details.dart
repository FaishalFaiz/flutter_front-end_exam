import 'package:flutter/material.dart';
import 'package:flutter_idn_exam/presentation/widget/course_time_line.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            "Course Details",
            style: TextStyle(
              fontFamily: "PoppinsSemiBold",
              fontSize: 20,
            ),
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(
                Icons.arrow_back,
                size: 30,
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite,
              size: 25,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // width: double.infinity,
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Image.asset(
                "yt_image.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              "UI Design : Wireframe to \nVisual Design",
              style: TextStyle(
                fontFamily: "PoppinsSemiBold",
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Image.asset(
                  "profile_teach.png",
                  width: 50,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Faiz Faishal",
                      style: TextStyle(
                        fontFamily: "PoppinsSemiBold",
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Expert UI/UX Designer",
                      style: TextStyle(
                        fontFamily: "PoppinsMedium",
                        fontSize: 14,
                        color: Color(0xffA2ADB1),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(height: 24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(
                      "About",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "PoppinsRegular",
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffD1E2FD),
                    ),
                    child: Text(
                      "Lesson",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "PoppinsRegular",
                        color: Color(0xff006EEE),
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(
                      "Tool",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "PoppinsRegular",
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(
                      "Resource",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "PoppinsRegular",
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(
                      "Review",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "PoppinsRegular",
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(
                      "Coach",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "PoppinsRegular",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            Text(
              "Course List",
              style: TextStyle(
                fontFamily: "PoppinsSemiBold",
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CourseTimeLine(
                    number: "1",
                    title: "Visual Design Intro",
                    time: "01:47",
                  ),
                  const SizedBox(height: 16),
                  CourseTimeLine(
                    number: "2",
                    title: "Design Refrence",
                    time: "02:45",
                  ),
                  const SizedBox(height: 16),
                  CourseTimeLine(
                    number: "3",
                    title: "Create Moodboard",
                    time: "04:47",
                  ),
                  const SizedBox(height: 16),
                  CourseTimeLine(
                    number: "4",
                    title: "Wireframe to Visual Design - Part 1",
                    time: "05:28",
                  ),
                  const SizedBox(height: 16),
                  CourseTimeLine(
                    number: "5",
                    title: "Wireframe to Visual Design - Part 2",
                    time: "06:57",
                  ),
                  const SizedBox(height: 16),
                  CourseTimeLine(
                    number: "6",
                    title: "Closing to Design",
                    time: "07:67",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
