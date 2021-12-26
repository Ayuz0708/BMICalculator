import 'package:bmi_calcualtor/constants.dart';
import 'package:bmi_calcualtor/bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Homestate extends StatefulWidget {
  @override
  _HomestateState createState() => _HomestateState();
}

class _HomestateState extends State<Homestate> {
  TextEditingController _height= new TextEditingController();
  TextEditingController _weight = new TextEditingController();
  double _bmi=0;
  String _result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator',style: TextStyle(color:accentcolor,fontWeight: FontWeight.w300),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainhexcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _height,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentcolor
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Height',
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(0.8)
                      )
                    ),
                  ),
                ),
                Container(

                  width: 130,
                  child: TextField(
                    controller: _weight,
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: accentcolor
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Weight',
                        hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(0.8)
                        )
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),

            GestureDetector(
              onTap: () {
                double _h = double.parse(_height.text);
                double _w = double.parse(_weight.text);
                setState(() {
                  _bmi = _w / (_h * _h);
                  if(_bmi > 25){
                    _result = "You\'re over weight";
                  } else if(_bmi>= 18.5 && _bmi <= 25){
                    _result = "You have normal weight";
                  }else{
                    _result = "You\'re under weight";
                  }
                });
              },
              child: Container(
                child: Text(
                  "Calculate",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: accentcolor),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                _bmi.toStringAsFixed(2),
                style: TextStyle(fontSize: 90, color: accentcolor),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Visibility(
                visible: _result.isNotEmpty,
                child: Container(
                  child: Text(
                    _result,
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: accentcolor),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Leftbar(
              barwidth: 40,
            ),
            SizedBox(
              height: 20,
            ),
            Leftbar(barwidth: 70),
            SizedBox(
              height: 20,
            ),
            Leftbar(
              barwidth: 40,
            ),
            SizedBox(
              height: 20,
            ),
            Rightbar(barwidth: 70),
            SizedBox(
              height: 50,
            ),
            Rightbar(barwidth: 70),
          ],
        ),
      ));
  }
}