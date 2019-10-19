import 'package:facebook/components/largeButton.dart';
import 'package:facebook/components/smallButton.dart';
import 'package:flutter/material.dart';

class FeedWidget extends StatelessWidget {

  final String userImage;
  final String userName;
  final String textFeed;
  final String timeFeed;
  final String imageFeed;

  const FeedWidget(
      {Key key,
      this.userImage,
      this.userName,
      this.textFeed,
      this.timeFeed,
      this.imageFeed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),

                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(userName, style: TextStyle(
                        color: Color(0xFFF101113),
                        fontSize: 19,
                        fontWeight: FontWeight.bold
                      )),
                      SizedBox(width: 3),
                      Row(
                        children: <Widget>[
                          Text(timeFeed, style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFF101113)
                          )),
                          SizedBox(width: 3),
                          Icon(Icons.history, color: Color(0xFFF101113), size: 18)
                        ],
                      )
                    ],
                  )

                ],
              ),

              IconButton(
                icon: Icon(Icons.more_horiz, color: Color(0xFFF101113), size: 30),
                onPressed: (){},
              )

            ],
          ),

          SizedBox(height: 22),

          Text(textFeed, style: TextStyle(
            fontSize: 15,
            color: Color(0xFFF101113),
            height: 1.4,
            letterSpacing: 1.4,
          )),

          SizedBox(height: 20),

          imageFeed != '' ? Container(

              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imageFeed),
                  fit: BoxFit.cover
                )
              ),

          ) : Container(),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SmallButton(
                    color: Colors.blue,
                    iconData: Icons.thumb_up,
                  ),
                  Transform.translate(
                    offset: Offset(-7, 0),
                    child: SmallButton(
                      color: Colors.red,
                      iconData: Icons.favorite,
                    ),
                  ),
                  SizedBox(width: 3),
                  Text("34.3K", style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFF101113),
                    fontWeight: FontWeight.bold
                  ))
                ],
              ),

              Text("750 Comments", style: TextStyle(
                fontSize: 15,
                color: Color(0xFFF101113),
                fontWeight: FontWeight.bold
              ))

            ],
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              LargeButton(
                iconData: Icons.thumb_up,
                label: "Like",
                color: Colors.blue,
              ),
              LargeButton(
                iconData: Icons.chat,
                label: "Comment",
                color: Colors.grey,
              ),
              LargeButton(
                iconData: Icons.share,
                label: "Share",
                color: Colors.grey,
              )
            ],
          )

        ],
      ),
    );
  }
}
