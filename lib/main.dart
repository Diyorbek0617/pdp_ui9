import 'package:flutter/material.dart';
import 'package:pdp_ui9/pages/feed_page.dart';
import 'package:pdp_ui9/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: Home_page(),
    routes: {
     Home_page.id:(context)=>Home_page(),
      Feed_page.id:(context)=>Feed_page(),
    },
  ),
  );
}
