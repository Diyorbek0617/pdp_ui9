import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pdp_ui9/pages/feed_page.dart';
class Home_page extends StatefulWidget {
 // const Home_page({Key? key}) : super(key: key);
  static final String id="home_page";

  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  var _pages = [
    Feed_page(),
    Feed_page(),
    Feed_page(),
    Feed_page(),
    Feed_page(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black54,
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.camera,
            color: Colors.grey[600],
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.tv,
              color: Colors.grey[600],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesome.send_o,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),

      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Foundation.home),
              label: "Feed",
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.search),
              label: "Search",
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.plus_square),
              label: "Upload",
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.heart),
              label: "Likes",
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.user),
              label: "Account",
          ),
        ],
      ),
    );
  }
}