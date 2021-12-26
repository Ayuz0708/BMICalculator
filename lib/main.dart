import 'package:bmi_calcualtor/home.dart';
import 'package:bmi_calcualtor/bar.dart';
import 'package:bmi_calcualtor/constants.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.yellow,
      ),
      home: Homestate(),
    );
  }
}
