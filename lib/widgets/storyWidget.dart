import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {

  final String storyImage;
  final String userImage;
  final String userName;

  const StoryWidget({Key key, this.storyImage, this.userImage, this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              colors: [
                Color(0xFFF101113).withOpacity(0.8),
                Color(0xFFF101113).withOpacity(0.1),
              ]
            )
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 3),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover
                  )
                ),
              ),

              Text(userName, style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ))
            ],
          ),
        ),
      ),
    );
  }
}