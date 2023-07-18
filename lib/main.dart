import 'package:evaluation_flutter_design/controller/home_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evaluation Flutter Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeController(),
    );
  }
}
