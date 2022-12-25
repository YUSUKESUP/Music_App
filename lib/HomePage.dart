import 'package:flutter/material.dart';
import 'package:music_app/widgets/MusicList.dart';
import 'package:music_app/widgets/PlayList.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF303151).withOpacity(0.6),
              Color(0xFF303151).withOpacity(0.9),
            ]
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 20,left: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Icon(Icons.sort_rounded,
                          color: Color(0xFF899CCF),
                            size: 30,
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Icon(Icons.more_vert,
                            color: Color(0xFF899CCF),
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.only(bottom: 5),
                  child: Text('Hello Sir',style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                   ),
                   ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5),
                    child: Text('What you want to hear sir',
                      style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 16,
                     ),
                    ),
                  ),
                  Padding(padding:
                  EdgeInsets.only(top: 15,right: 20,bottom: 20),
                  child: Container(
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Color(0xFF31314F),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          height: 50,
                          width: 200,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Searc the music',
                              hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(
                          horizontal: 10),
                          child: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
                  TabBar(
                    isScrollable: true,
                    labelStyle: TextStyle(fontSize: 18),
                    indicator: BoxDecoration(
                      border: Border(bottom: BorderSide(
                        width: 3,
                        color: Color(0xFF899CCF),
                      )
                      )
                    ),
                    tabs: [
                      Tab(text: 'Music'),
                      Tab(text: 'Playlista'),
                      Tab(text: 'Favourites'),
                      Tab(text: 'Trending'),
                      Tab(text: 'Collections'),
                      Tab(text: 'New'),
                    ],
                  ),
                  Flexible(
                    flex: 1,
                    child: TabBarView(
                    children: [
                      MusicList(),
                      PlayList(),
                      Container(color: Colors.red),
                      Container(color: Colors.red),
                      Container(color: Colors.red),
                      Container(color: Colors.red),
                    ],
                  ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
