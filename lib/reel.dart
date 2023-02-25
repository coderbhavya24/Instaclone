import 'package:flutter/material.dart';
import 'package:myclone/search.dart';
import 'package:myclone/activity.dart';
import 'package:myclone/page.dart';

import 'profile.dart';


class reels extends StatelessWidget {
  // late VideoPlayerController _controller;
  // @override
  // void initState() {
  //   super.initState();
  //   // Pointing the video controller to our local asset.
  //   _controller = VideoPlayerController.asset("images/new_vedio.mp4")
  //     ..initialize().then((_) {
  //       // Once the video has been loaded we play the video and set looping to true.
  //       _controller.play();
  //       _controller.setLooping(true);
  //       // Ensure the first frame is shown after the video is initialized.
  //       setState(() {});
  //     });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return pages();
                    }),
                  );
                },
                icon: Icon(Icons.home_outlined),
                iconSize: 35,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return search();
                    }),
                  );
                },
                icon: Icon(Icons.search),
                iconSize: 30,
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return reels();
                    }),
                  );
                },
                icon: Icon(Icons.live_tv),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return activity();
                    }),
                  );
                },
                icon: Icon(Icons.favorite_outline_sharp),
                iconSize: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ProfilePage();
                    }),
                  );
                },
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage('images/myself.jpeg'),
                ),
              ),
              const SizedBox(),
            ],
          ),
        ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Icon(Icons.live_tv,
              size: 85,),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Icon(Icons.live_tv,
              size: 85,),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Icon(Icons.live_tv,
              size: 85,),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Icon(Icons.live_tv,
              size: 85,),
          )

        ],
      )





    );
  }
}
