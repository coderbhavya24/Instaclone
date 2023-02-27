import 'package:flutter/material.dart';
import 'package:myclone/search.dart';
import 'package:myclone/activity.dart';
import 'package:myclone/page.dart';

import 'profile.dart';


class reels extends StatelessWidget {
  // late VideoPlayerController _controller;
  // @override
  int curr=0;
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
          color: Colors.black,
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
                icon: Icon(Icons.home_outlined,
                color: Colors.white,),
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
                icon: Icon(Icons.search, color: Colors.white),
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
                color: Colors.white,
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
                icon: Icon(Icons.favorite_outline_sharp,  color: Colors.white),
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(" Reels",
          style: TextStyle(
            // fontFamily: 'Sch',
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                image: DecorationImage( fit: BoxFit.cover,image:AssetImage('images/reels${index%3}.jpeg')) ,
              ),
              child: Stack(
                children: [

                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70,
                            width: 270,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            height: 270,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12,)
                    ],
                  )
                ],
              )
            );
      })
    );
  }
}
