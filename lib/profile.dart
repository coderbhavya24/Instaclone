import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'activity.dart';
import 'page.dart';
import 'reel.dart';
import 'search.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 0,
        leading: Icon(Icons.lock_outline,
        color: Colors.black,),
        title: const Text("bhavya_kk",
          style: TextStyle(
            // fontFamily: 'Sch',
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width*0.61,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down,color: Colors.black,))
                // ,SizedBox(width: 37,)
                ,Row(
                  children: [
                    SizedBox(width: 5,),
                    Icon(Icons.add_box_outlined,color: Colors.black,size: 29,),
                    SizedBox(width: 5,),
                    Icon(Icons.menu,color: Colors.black,size: 29,),
                    SizedBox(width: 10,)
                  ],
                ),
              ],
            ),
          )
        ],
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width*0.12,
                    backgroundImage: AssetImage('images/myself.jpeg'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.62,
                    height: 66,
                    // color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('23',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                            ),),
                            Text('558',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold
                              ),),
                            Text('613',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold
                              ),),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Text(' Posts',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  // fontWeight: FontWeight.bold
                              ),),
                            Text('  Followers',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                // fontWeight: FontWeight.bold
                              ),),
                            Text('Following',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                // fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),
                        SizedBox(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 95,
              width: MediaQuery.of(context).size.width,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('  Bhavya 😜',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
                  SizedBox(height: 1,),
                  Text('  Love Basketball🏀, Skating🛼 & Cubing',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),),
                  SizedBox(height: 1,),
                  Text('  Pen Flows Sometimes🖋️📔',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 28,
                        width: MediaQuery.of(context).size.width*0.41,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(7.5),
                        ),
                        child: Center(
                          child: Text('Edit Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),),
                        ),
                      ),
                      Container(
                        height: 28,
                        width: MediaQuery.of(context).size.width*0.41,

                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(7.5),
                        ),
                        child: Center(
                          child: Text('Share Profile',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),),
                        ),
                      ),
                      Container(
                        height: 28,
                        width: MediaQuery.of(context).size.width*0.075,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(7.5),


                        ),
                        child: Icon(Icons.mobile_screen_share_rounded,
                        size: 21,),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(width: 8),

                const SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.pink, Colors.blue],
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/carry.jfif'),
                      ),
                    ),
                    const Text('Ajey.Na..'),
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.pink, Colors.blue],
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/trigu.jfif'),
                      ),
                    ),
                    const Text('Nishay23..'),
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.pink, Colors.blue],
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/ashish.jfif'),
                      ),
                    ),
                    const Text('Avmfans'),
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.pink, Colors.blue],
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/harsh.jfif'),
                      ),
                    ),
                    const Text('iamhars..'),
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.pink, Colors.blue],
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/tanmay.jfif'),
                      ),
                    ),
                    const Text('Tanmayb..'),
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.pink, Colors.blue],
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/harry.jfif'),
                      ),
                    ),
                    const Text('codewit..'),
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.pink, Colors.blue],
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/gaurav.jfif'),
                      ),
                    ),
                    const Text('Flyingb..'),
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.pink, Colors.blue],
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/akash.jfif'),
                      ),
                    ),
                    const Text('TheAkas..'),
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.pink, Colors.blue],
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/zakir.jfif'),
                      ),
                    ),
                    const Text('Khan.Za..'),
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.pink, Colors.blue],
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/bhuvan.jfif'),
                      ),
                    ),
                    const Text('BBkivin..'),
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 45,
                      ),
                    ),
                    const Text('Story '),
                  ],
                ),
              ]),
            ),
          ],
        ),
      )
    );
  }
}
