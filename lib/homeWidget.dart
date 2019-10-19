import 'package:facebook/widgets/feedWidget.dart';
import 'package:facebook/widgets/headerWidget.dart';
import 'package:facebook/widgets/storyWidget.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Stories", style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          letterSpacing: 1.3
                        )
                        ),

                        SizedBox(height: 20),

                        Container(
                          height: 185,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              StoryWidget(
                                storyImage: "assets/images/photo_1.jpg",
                                userImage: "assets/images/user_1.jpg",
                                userName: "James John",
                              ),
                              StoryWidget(
                                storyImage: "assets/images/photo_2.jpg",
                                userImage: "assets/images/user_2.jpg",
                                userName: "Robert Michael",
                              ),
                              StoryWidget(
                                storyImage: "assets/images/photo_3.jpg",
                                userImage: "assets/images/user_3.jpg",
                                userName: "David Richard",
                              ),
                              StoryWidget(
                                storyImage: "assets/images/photo_4.jpg",
                                userImage: "assets/images/user_4.jpg",
                                userName: "Linda Barbara",
                              ),
                              StoryWidget(
                                storyImage: "assets/images/photo_5.jpg",
                                userImage: "assets/images/user_5.jpg",
                                userName: "Elizabeth Jennifer",
                              ),
                              StoryWidget(
                                storyImage: "assets/images/photo_6.jpg",
                                userImage: "assets/images/user_6.jpg",
                                userName: "Susan Margaret",
                              ),
                              StoryWidget(
                                storyImage: "assets/images/photo_7.jpg",
                                userImage: "assets/images/user_7.jpg",
                                userName: "Betty Helen",
                              )
                            ],
                          ),
                        ),

                        SizedBox(height: 35),

                        FeedWidget(
                          userName: "Betty Helen",
                          userImage: "assets/images/user_7.jpg",
                          imageFeed: "assets/images/photo_7.jpg",
                          textFeed: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          timeFeed: "1 hr",
                        ),
                         FeedWidget(
                          userName: "Susan Margaret",
                          userImage: "assets/images/user_6.jpg",
                          imageFeed: "assets/images/photo_6.jpg",
                          textFeed: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          timeFeed: "1 hr",
                        ),
                         FeedWidget(
                          userName: "Elizabeth Jennifer",
                          userImage: "assets/images/user_5.jpg",
                          imageFeed: "assets/images/photo_5.jpg",
                          textFeed: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          timeFeed: "1 hr",
                        ),
                         FeedWidget(
                          userName: "Linda Barbara",
                          userImage: "assets/images/user_4.jpg",
                          imageFeed: "assets/images/photo_4.jpg",
                          textFeed: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          timeFeed: "1 hr",
                        ),
                         FeedWidget(
                          userName: "David Richard",
                          userImage: "assets/images/user_3.jpg",
                          imageFeed: "assets/images/photo_3.jpg",
                          textFeed: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          timeFeed: "1 hr",
                        ),
                         FeedWidget(
                          userName: "Robert Michael",
                          userImage: "assets/images/user_2.jpg",
                          imageFeed: "assets/images/photo_2.jpg",
                          textFeed: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          timeFeed: "1 hr",
                        ),
                         FeedWidget(
                          userName: "James John",
                          userImage: "assets/images/user_1.jpg",
                          imageFeed: "assets/images/photo_1.jpg",
                          textFeed: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          timeFeed: "1 hr",
                        )

                      ],
                    ),
                  ),
              ),
            )
          ],
        ),
    );
  }
}