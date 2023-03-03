import 'package:flutter/material.dart';

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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(" Setting",
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
    );
  }
}
