import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {

final Color color;
final IconData iconData;
final String label;

  const LargeButton({Key key, this.color, this.iconData, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(iconData, color: color),
              SizedBox(width: 4),
              Text(label, style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w500))
            ],
          ),
        ),
    );
  }
}