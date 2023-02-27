import 'package:flutter/material.dart';
import 'package:myclone/search.dart';
import 'package:myclone/activity.dart';
import 'package:myclone/page.dart';

import 'profile.dart';


class reels extends StatefulWidget {
  @override
  State<reels> createState() => _reelsState();
}

class _reelsState extends State<reels> {
  // late VideoPlayerController _controller;
  int curr=0;

  bool like=true;

  // void initState() {
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 180,),
                              Container(
                                height: 80,
                                width: 270,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 270,
                            width: 70,
                            decoration: BoxDecoration(

                              color: Colors.transparent,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){
                                          setState((){
                                            like=!like;
                                          });
                                    }, icon: Icon( like? Icons.favorite: Icons.favorite_border),
                                    iconSize: 38, color :like? Colors.red: Colors.white ),
                                    Text('1.3k', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                  ],
                                ),
                                // SizedBox(height: 15,),
                                Column(
                                  children: [
                                    Icon(Icons.message_outlined, color: Colors.white,size: 34,),
                                    Text('700', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                  ],
                                ),
                                // SizedBox(height: 12,),
                                Icon(Icons.share,color: Colors.white, size: 34,),
                                Icon(Icons.linear_scale_outlined, color:  Colors.white , size: 34,),
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white,width: 2.5),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/reels${index%3}.jpeg'),
                                    )
                                  ),
                                )
                              ],
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
