import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myclone/search.dart';
import 'package:myclone/reel.dart';
import 'package:myclone/page.dart';

import 'profile.dart';

class activity extends StatefulWidget {
  @override
  State<activity> createState() => _activityState();
}

class _activityState extends State<activity> {
  bool follow=true;
  bool follow1 = true;
  bool follow2 = true;
  bool follow3 = true;
  bool follow4 = true, follow5 = true, follow6 = true , follow7 = true, follow8=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(" Notification",
        style: TextStyle(
          // fontFamily: 'Sch',
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 25,
        ),),
      ),
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
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

          children: [
            SizedBox(
              height: 12,
            ),
            Row(

              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 22,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage('images/blank.jpg'),
                    ),
                    Positioned(
                      right: 0,
                      top: 2.5,
                      child: new Container(
                        padding: EdgeInsets.all(2),
                        decoration: new BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 18,
                          minHeight: 14,
                        ),
                        child: Text(
                          '123',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    )
                  ],
                ),
                SizedBox(
                  width: 4,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('  Follow Request',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),),
                    Text('  Approve or ignore requests',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),)
                  ],
                )
              ],
            )
            ,SizedBox(
             height: 18,
            ),
            Row(

              children: [
                SizedBox(
                  width: 22,
                ),
                Text('Yesterday',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400
                ),),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/bhuvan.jfif'),
                        ),

                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(' BBkiVines .',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                            Text(' liked your story.',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                            Text(' 1d',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),

                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        child: Image.asset('images/beast.jpg')),
                    SizedBox(width: 20,)
                  ],
                ),
              ],
            ),
            SizedBox(height: 17,)
            ,Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/harsh.jfif'),
                        ),

                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(' iamharshbeniwal .',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                            Text(' started',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text(' following you',
                              style: TextStyle(
                                fontSize: 13,
                                // color: Colors.grey,
                              ),),
                            Text(' 1d',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // Toggle light when tapped.
                      follow1 = !follow1;
                    });
                  },
                  child: Row(
                    children: [
                     follow1 ? Container(

                    child: Center(child:
                    Text('Follow',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),)
                    ),
                        height: 32,
                        width: 85,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                      :Container(

                       child: Center(child:
                       Text('Following',
                         style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                         ),)
                       ),
                       height: 32,
                       width: 105,
                       decoration: BoxDecoration(
                         color: Colors.grey,
                         borderRadius: BorderRadius.circular(20),
                       ),
                     ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 17,)
            ,Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/bhuvan.jfif'),
                        ),

                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(' BBkiVines .',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                            Text(' started',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text(' following you',
                              style: TextStyle(
                                fontSize: 13,
                                // color: Colors.grey,
                              ),),
                            Text(' 1d',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // Toggle light when tapped.
                      follow8 = !follow8;
                    });
                  },
                  child: Row(
                    children: [
                      follow8 ? Container(

                        child: Center(child:
                        Text('Follow',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),)
                        ),
                        height: 32,
                        width: 85,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                          :Container(

                        child: Center(child:
                        Text('Following',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),)
                        ),
                        height: 32,
                        width: 105,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 17,),
            Row(

              children: [
                SizedBox(
                  width: 22,
                ),
                Text('This Week',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),),
              ],
            ),
            SizedBox(height: 17,)
            ,Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/akash.jfif'),
                        ),

                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(' Theakashgupta .',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),

                          ],
                        ),
                        Row(
                          children: [
                            Text(' requested to follow',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text(' you',
                              style: TextStyle(
                                fontSize: 13,
                                // color: Colors.grey,
                              ),),
                            Text(' 1d',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // Toggle light when tapped.
                      follow2 = !follow2;
                    });
                  },
                  child: Row(
                    children: [
                      follow2 ? Row(
                        children: [
                          Container(

                            child: Center(child:
                            Text('Confirm',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),)
                            ),
                            height: 32,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 4),
                          Container(

                            child: Center(child:
                            Text('Delete',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),)
                            ),
                            height: 32,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      )
                          :Container(

                        child: Center(child:
                        Text('Following',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),)
                        ),
                        height: 32,
                        width: 105,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 17,)
            ,Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/trigu.jfif'),
                        ),

                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(' Nishay2306 .',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                            Text(' started',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text(' following you',
                              style: TextStyle(
                                fontSize: 13,
                                // color: Colors.grey,
                              ),),
                            Text(' 1d',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // Toggle light when tapped.
                      follow = !follow;
                    });
                  },
                  child: Row(
                    children: [
                      follow ? Container(

                        child: Center(child:
                        Text('Follow',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),)
                        ),
                        height: 32,
                        width: 85,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                          :Container(

                        child: Center(child:
                        Text('Following',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),)
                        ),
                        height: 32,
                        width: 105,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 17,)
            ,Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/tanmay.jfif'),
                        ),

                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(' TanmayBhat .',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                            Text(' liked your story.',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                            Text(' 1d',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),

                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        child: Image.asset('images/beast.jpg')),
                    SizedBox(width: 20,)
                  ],
                ),
              ],
            ),
            SizedBox(height: 17,)
            ,Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/akash.jfif'),
                        ),

                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(' Theakashgupta .',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),

                          ],
                        ),
                        Row(
                          children: [
                            Text(' requested to follow',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text(' you',
                              style: TextStyle(
                                fontSize: 13,
                                // color: Colors.grey,
                              ),),
                            Text(' 1d',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // Toggle light when tapped.
                      follow7 = !follow7;
                    });
                  },
                  child: Row(
                    children: [
                      follow7 ? Row(
                        children: [
                          Container(

                            child: Center(child:
                            Text('Confirm',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),)
                            ),
                            height: 32,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 4),
                          Container(

                            child: Center(child:
                            Text('Delete',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),)
                            ),
                            height: 32,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      )
                          :Container(

                        child: Center(child:
                        Text('Following',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),)
                        ),
                        height: 32,
                        width: 105,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 17,)
            ,Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/trigu.jfif'),
                        ),

                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(' Nishay2306 .',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                            Text(' started',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text(' following you',
                              style: TextStyle(
                                fontSize: 13,
                                // color: Colors.grey,
                              ),),
                            Text(' 1d',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // Toggle light when tapped.
                      follow4 = !follow4;
                    });
                  },
                  child: Row(
                    children: [
                      follow4 ? Container(

                        child: Center(child:
                        Text('Follow',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),)
                        ),
                        height: 32,
                        width: 85,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                          :Container(

                        child: Center(child:
                        Text('Following',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),)
                        ),
                        height: 32,
                        width: 105,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 17,)
            ,Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/tanmay.jfif'),
                        ),

                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(' TanmayBhat .',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                            Text(' liked your story.',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                            Text(' 1d',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),

                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        child: Image.asset('images/beast.jpg')),
                    SizedBox(width: 20,)
                  ],
                ),
              ],
            ),
            SizedBox(height: 17,)
            ,Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/akash.jfif'),
                        ),

                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(' Theakashgupta .',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),

                          ],
                        ),
                        Row(
                          children: [
                            Text(' requested to follow',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text(' you',
                              style: TextStyle(
                                fontSize: 13,
                                // color: Colors.grey,
                              ),),
                            Text(' 1d',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // Toggle light when tapped.
                      follow5 = !follow5;
                    });
                  },
                  child: Row(
                    children: [
                      follow5 ? Row(
                        children: [
                          Container(
                            child: Center(child:
                            Text('Confirm',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),)
                            ),
                            height: 32,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 4),
                          Container(

                            child: Center(child:
                            Text('Delete',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),)
                            ),
                            height: 32,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      )
                          :Container(

                        child: Center(child:
                        Text('Following',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),)
                        ),
                        height: 32,
                        width: 105,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 17,)
            ,Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/trigu.jfif'),
                        ),

                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(' Nishay2306 .',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                            Text(' started',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text(' following you',
                              style: TextStyle(
                                fontSize: 13,
                                // color: Colors.grey,
                              ),),
                            Text(' 1d',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // Toggle light when tapped.
                      follow6 = !follow6;
                    });
                  },
                  child: Row(
                    children: [
                      follow6 ? Container(

                        child: Center(child:
                        Text('Follow',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),)
                        ),
                        height: 32,
                        width: 85,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                          :Container(

                        child: Center(child:
                        Text('Following',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),)
                        ),
                        height: 32,
                        width: 105,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 17,)
            ,Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/tanmay.jfif'),
                        ),

                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(' TanmayBhat .',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                            Text(' liked your story.',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                            Text(' 1d',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),

                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        child: Image.asset('images/beast.jpg')),
                    SizedBox(width: 20,)
                  ],
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
