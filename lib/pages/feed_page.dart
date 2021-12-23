import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pdp_ui9/model/post_model.dart';
import 'package:pdp_ui9/model/story_model.dart';

class Feed_page extends StatefulWidget {
 // const Feed_page({Key? key}) : super(key: key);
  static final String id="feed_page";

  @override
  _Feed_pageState createState() => _Feed_pageState();
}
class _Feed_pageState extends State<Feed_page> {
  List<Story> _stories = [
    Story("assets/images/user_1.jpeg", "Jazmin"),
    Story("assets/images/user_2.jpeg", "Sylvester"),
    Story("assets/images/user_3.jpeg", "Lavina"),
    Story("assets/images/user_1.jpeg", "Jazmin"),
    Story("assets/images/user_2.jpeg", "Sylvester"),
    Story("assets/images/user_3.jpeg", "Lavina"),
  ];

  List<Post> _posts = [
    Post(
        username: "Brianne",
        userImage: "assets/images/user_1.jpeg",
        postImage: "assets/images/feed_1.jpeg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Henri",
        userImage: "assets/images/user_2.jpeg",
        postImage: "assets/images/feed_2.jpeg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Mariano",
        userImage: "assets/images/user_3.jpeg",
        postImage: "assets/images/feed_3.jpeg",
        caption: "Consequatur nihil aliquid omnis consequatur."),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(),
              // #stories #watchall
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Stories",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Watch All",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              // #storylist
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: _stories.map((story) {
                    return _itemOfStory(story);
                  }).toList(),
                ),
              ),

              // #postlist
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _posts.length,
                    itemBuilder: (ctx, i) {
                      return _itemOfPost(_posts[i]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemOfStory(Story story) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            border: Border.all(
              width: 3,
              color: Color(0xFF8e44ad),
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(
              2,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image(
                image: AssetImage(story.image),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(story.name,style: TextStyle(color: Colors.grey[600]),),
      ],
    );
  }

  Widget _itemOfPost(Post post) {
    return Container(
      color: Colors.black54,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image(
                        image: AssetImage(post.userImage),
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(post.username,style: TextStyle(color: Colors.grey[600]),),
                  ],
                ),
                IconButton(
                  icon: Icon(SimpleLineIcons.options,color: Colors.grey[600],),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          FadeInImage(
            image: AssetImage(post.postImage),
            placeholder: AssetImage("assets/images/placeholder.png"),
            width: MediaQuery.of(context).size.width,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesome.heart_o,color: Colors.grey[600],),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesome.comment_o,color: Colors.grey[600],),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesome.send_o,color: Colors.grey[600],),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(FontAwesome.bookmark_o,color: Colors.grey[600],),
              ),
            ],
          ),

          // #tags
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 14,
            ),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Liked By ",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  TextSpan(
                    text: "Sigmund,",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  TextSpan(
                    text: " Yessenia,",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  TextSpan(
                    text: " Dayana",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  TextSpan(
                    text: " and",
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  TextSpan(
                    text: " 1263 others",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),

          // #caption
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 5,
            ),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: post.username,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  TextSpan(
                    text: " ${post.caption}",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ),

          // #post date
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 14,
            ),
            alignment: Alignment.topLeft,
            child: Text(
              "Febuary 2020",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.grey[600],fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
