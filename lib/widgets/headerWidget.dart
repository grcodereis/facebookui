import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.only(top: 60,right: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Image.asset("assets/images/face.png"),
          ),

          Row(
            children: <Widget>[
              Icon(Icons.question_answer, color: Color(0xFFF101113), size: 30),
              SizedBox(width: 5),
              Icon(Icons.add_a_photo, color: Color(0xFFF101113), size: 30),
            ],
          )
          
        ],
      ),
    );
  }
}