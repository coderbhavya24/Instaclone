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
List name =[
  'TheAkashGupta','HarshBeniwal','TheFlyingBeast'
];
List img =[
  'images/akash.jfif','images/harsh.jfif','images/beast.jpg'
];
 var like =[
    false,false,false,false,false,false,false,false,false,false
  ];
  var foll =[
    false,false,false,false,false,false,false,false,false,false
  ];
  // bool like=true;

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
                                height: 110,
                                width: 270,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        CircleAvatar(
                                          radius: 18,
                                          backgroundImage: AssetImage(img[index%3]),
                                        ),

                                        Text(name[index%3],
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),),

                                        GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              foll[index]=!foll[index];
                                            });
                                          },
                                          child: !foll[index] ?Container(
                                            height: 28,
                                            width: 85,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white, width: 3),
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: Center(
                                              child: Text('Follow',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                            ),
                                          ):  Container(
                                          height: 28,
                                          width: 95,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white, width: 3),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          child: Center(
                                            child: Text('Following',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                          ),
                                        ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 6,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 14,),
                                        Text('lorem ipsum dispusm sum chip..',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17,
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 18,),
                                        Container(
                                          height: 28,
                                          width: 145,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white, width: 3),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          child: Center(
                                            child: Text('Follow',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                          ),
                                        ),
                                      ],
                                    ),
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
                                            like[index]=!like[index];
                                          });
                                    }, icon: Icon( like[index]? Icons.favorite: Icons.favorite_border),
                                    iconSize: 38, color :like[index]? Colors.red: Colors.white ),
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
                                      image: AssetImage(img[index%3]),
                                    )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4,)
                    ],
                  )
                ],
              )
            );
      })
    );
  }
}
