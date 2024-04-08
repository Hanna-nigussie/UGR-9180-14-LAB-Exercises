import 'package:flutter/material.dart';
import 'package:navigation/CourseDetailScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation 1",
      debugShowCheckedModeBanner: false,
      home: CoursesListScreen(
        courses: [
          Course(title: "Software", code: "CS101"),
          Course(title: "Java", code: "CS102"),
          Course(title: "Mobile", code: "CS103"),
        ],
        onTapped: (course) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseDetailsScreen(course: Course),
            ),
          );
        },
      ),
    );
  }
}

class CoursesListScreen extends StatelessWidget {
  const CoursesListScreen({
    required this.courses,
    required this.onTapped,
  });

  final List<Course> courses;
  final ValueChanged<Course> onTapped;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Courses List")),
      body: ListView(
        children: [
          for (var course in courses)
            ListTile(
              title: Text(course.title),
              subtitle: Text(course.code),
              onTap: () => onTapped(course),
            ),
        ],
      ),
    );
  }
}

class Course {
  final String title;
  final String code;

  Course({required this.title, required this.code});
}


for courseList screen