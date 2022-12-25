import 'package:flutter/material.dart';
import 'package:music_app/MusicPage.dart';
import 'HomePage.dart';
import 'PlayListPage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) =>  HomePage(),
        'playlistPage' : (context) =>PlayListPage(),
        'musicPage' : (context) =>MusicPage(),
       }
      );
   }
}
