import 'package:flutter/material.dart';

class PlayListPage extends StatelessWidget {
  List<String> CoverList =[
    "https://i.pinimg.com/originals/f5/82/47/f58247463e38a536f442bfb816f62c6b.jpg",
    "https://www.designformusic.com/wp-content/uploads/2016/09/electro-synthwave-album-cover-500x500.jpg",
    "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/102342461/original/68ef1e1fab3c4028d51f7fd7cfa9bad2232e576c/create-a-copyright-free-album-cover.jpg",
    "https://www.designformusic.com/wp-content/uploads/2016/02/volta-music-trailer-music-album-cover-design.jpg",
    "https://www.designformusic.com/wp-content/uploads/2018/07/Digital-World-album-cover-design.jpg",
    "https://www.designformusic.com/wp-content/uploads/2016/02/volta-music-trailer-music-album-cover-design.jpg"
  ];

  Widget ListItem(String CoverUrl,String AlbumTitle, String SingerName){
      return Column(
        children: <Widget>[
          InkWell(
            onTap: (){},
            child: Container(
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        child: Image.network(CoverUrl),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          AlbumTitle,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.w800
                          ),
                        ),
                        SizedBox(height: 12.0,),
                        Text(
                          SingerName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300
                          ),
                        )
                      ],
                    )
                  ],
                ),
            ),
          ),
          SizedBox(height: 20.0,)
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:12.0,vertical: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Your Favorite Music",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 50.0,),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListItem(CoverList[0], "AlbumTitle", "SingerName"),
                    ListItem(CoverList[1], "AlbumTitle", "SingerName"),
                    ListItem(CoverList[2], "AlbumTitle", "SingerName"),
                    ListItem(CoverList[3], "AlbumTitle", "SingerName"),
                    ListItem(CoverList[4], "AlbumTitle", "SingerName"),
                    ListItem(CoverList[5], "AlbumTitle", "SingerName"),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}