import 'package:flutter/material.dart';
import 'package:myclone/search.dart';
import 'package:myclone/reel.dart';
import 'package:myclone/page.dart';

class activity extends StatelessWidget {
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
            const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('images/myself.jpeg'),
            ),
            const SizedBox(),
          ],
        ),
      ),
      body:  Center(
        child: Icon(Icons.favorite,
          size: 85,),
      ),
    );
  }
}
