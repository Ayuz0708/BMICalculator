import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calcualtor/constants.dart';

class Leftbar extends StatelessWidget {
  final double barwidth;

  const Leftbar({Key? key, required this.barwidth}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Row(
     mainAxisAlignment: MainAxisAlignment.end,
     children: [
       Container(
         height: 25,
         width: barwidth,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
           color: accentcolor
         ),
       )
     ],
   );
  }
}
class Rightbar extends StatelessWidget {
  final double barwidth;

  const Rightbar({Key? key, required this.barwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barwidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20)),
              color: accentcolor
          ),
        )
      ],
    );
  }
}

