import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myclone/activity.dart';
import 'package:myclone/reel.dart';
import 'package:myclone/page.dart';

class search extends StatelessWidget {

  List<String> imgs = ['images/harsh.jfif','images/tanmay.jfif','images/akash.jfif','images/carry.jfif'];


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
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 35, left: 10, right: 10),
                child: Container(
                  height: 40,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffC8C8C8).withOpacity(0.3),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: TextField(
                        cursorColor: Color(0xff000000).withOpacity(0.5),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xff000000).withOpacity(0.5),
                          ),
                          hintText: "Search",
                          hintStyle: TextStyle(
                              color: Color(0xff000000).withOpacity(0.5)),
                        )),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height-126,
                child: GridView.builder(
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 30,
                      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          margin: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width*0.25,
                          height: MediaQuery.of(context).size.width*0.3,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imgs[index%4]),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                ),
              ),
            ],
          ),
      )
    );
  }
}

/*


                )
 */