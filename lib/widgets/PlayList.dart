import 'package:flutter/material.dart';

class PlayList extends StatelessWidget {
  const PlayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 1; i < 20; i++)
          Container(
            margin: EdgeInsets.only(top: 20,right: 20,left: 5),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xFF30314D),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, 'playlistPage');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/71Z0rLIvpuL._AC_SL1448_.jpg',
                    fit: BoxFit.cover,
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
                SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('GREEN DAY',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                     ),
                    ),
                    SizedBox(height: 5),
                    Text('30 songs',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 16,
                     ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_vert,
                  color: Colors.white.withOpacity(0.6),
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
