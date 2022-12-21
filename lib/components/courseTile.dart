import 'package:flutter/material.dart';
import '../model/course_model.dart';

class CourseTile extends StatelessWidget {
  final Courses course;

  CourseTile(this.course);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${course.courseId}",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 20,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "${course.nextSessionDate}",
                        style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
