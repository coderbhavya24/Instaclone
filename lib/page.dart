import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myclone/direct.dart';

class pages extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            const SizedBox(),
            IconButton(onPressed: (){},
                icon: Icon(Icons.home_outlined),
              iconSize: 35,
            ),
            IconButton(onPressed: (){},
              icon: Icon(Icons.search),
              iconSize: 30,
              color: Colors.black,
            ),
            IconButton(onPressed: (){},
              icon: Icon(Icons.live_tv),
              iconSize: 30,
            ),
            IconButton(onPressed: (){},
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(

            child:  const Text('Instagram'
                ,style: TextStyle(

                   fontSize: 30,
                  fontFamily: 'Billabong',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),),
            ),
             SizedBox(
              child: IconButton(
                onPressed: (){},
                icon: const Icon(Icons.add_box_outlined,
                color: Colors.black,),

              ),
            ),
          ],
        ),
        actions: [
          IconButton(
          onPressed: (){
            Navigator.push(
              context,
                 MaterialPageRoute(builder: (context) {
                   return chats();
               }
                 ),
              );
              },
            icon: const Icon(Icons.near_me_sharp,
            color: Colors.black,
            size: 30,),
          )
        ],
      ),

      body: ListView( children: <Widget>[
    Column(
      children: [
       const SizedBox(
          height: 13,
        ),
    SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(

    children:  [
      SizedBox(width:8),
      Column(
        children: [
          Container(

            height: 80,
            width: 80,
            padding: EdgeInsets.fromLTRB(4,4,4,4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.pink, Colors.blue],
              ),
            ),
            child:  const Icon(
              Icons.add,
              size: 45,

            ),
          ),
          const Text('Story '),
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
            child:  const CircleAvatar(
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
            child:  const CircleAvatar(
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
            child:  const CircleAvatar(
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
              child:  const CircleAvatar(
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
    child:  const CircleAvatar(
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
    child:  const CircleAvatar(
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
    child:  const CircleAvatar(
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
            child:  const CircleAvatar(
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
            child:  const CircleAvatar(
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
            child:  const CircleAvatar(
              backgroundImage: AssetImage('images/bhuvan.jfif'),
            ),
          ),
          const Text('BBkivin..'),
        ],
      ),
      const SizedBox(
        width: 4,
      ),
    ]
    ),

    ),
        const Divider(
          thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
            SizedBox(width:5),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/bhuvan.jfif'),
            ),
                SizedBox(width:10),
                Text('BBkivines',
                style: TextStyle(
                  fontWeight: FontWeight.bold,

                ),),

              ],
            ),
                const Icon(Icons.more_vert_rounded,
                 color: Colors.black,
                 size: 20,),


          ],
        ),
        const Divider(),
        Container(
          height: 395,
          width: 395,
          child: Image.asset('images/bhuvanposter.jfif',
          fit: BoxFit.fill,),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                SizedBox(width: 15),
                Icon(Icons.favorite_rounded,
                color: Colors.red,
                size: 32,),
                SizedBox(width: 15),
                Icon(Icons.messenger_outline_outlined,
                  color: Colors.black,
                  size: 30,),
                SizedBox(width: 15),
                Icon(Icons.share_outlined,
                  color: Colors.black,
                  size: 30,),
                SizedBox(width: 15),
              ],

            ),
            Row(
              children: const [
                Icon(Icons.save_alt_rounded,
                  color: Colors.black,
                  size: 30,),
                SizedBox(width: 15),
              ],
            ),


          ],
        ),
        SizedBox(height: 12),
        Row(

          children: const [
            SizedBox(width:12),
            Text('Liked by Avmfans and 7782 others',
            style: TextStyle(
           fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 15,
            ),),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: const [
            SizedBox(width:12),
            Text('BBkiVines',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15,
              ),),
            Text('  Dindhora is live.!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(

          children: const [
            SizedBox(width:12),
            Text('View all 2355 comments',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(width:5),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('images/gaurav.jfif'),
                ),
                SizedBox(width:10),
                Text('FlyingBeast',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,

                  ),),

              ],
            ),
            const Icon(Icons.more_vert_rounded,
              color: Colors.black,
              size: 20,),


          ],
        ),
        const Divider(),
        Container(
          height: 395,
          width: 395,
          child: Image.asset('images/beast.jpg',
            fit: BoxFit.fill,),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                SizedBox(width: 15),
                Icon(Icons.favorite_rounded,
                  color: Colors.red,
                  size: 32,),
                SizedBox(width: 15),
                Icon(Icons.messenger_outline_outlined,
                  color: Colors.black,
                  size: 30,),
                SizedBox(width: 15),
                Icon(Icons.share_outlined,
                  color: Colors.black,
                  size: 30,),
                SizedBox(width: 15),
              ],

            ),
            Row(
              children: const [
                Icon(Icons.save_alt_rounded,
                  color: Colors.black,
                  size: 30,),
                SizedBox(width: 15),
              ],
            ),


          ],
        ),
        SizedBox(height: 12),
        Row(

          children: const [
            SizedBox(width:12),
            Text('Liked by Ajey.Nagar and 3582 others',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15,
              ),),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: const [
            SizedBox(width:12),
            Text('FlyingBeast',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15,
              ),),
            Text('  Maintain your Physique',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(

          children: const [
            SizedBox(width:12),
            Text('View all 1385 comments',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(width:5),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('images/trigu.jfif'),
                ),
                SizedBox(width:10),
                Text('Nishay2306',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,

                  ),),

              ],
            ),
            const Icon(Icons.more_vert_rounded,
              color: Colors.black,
              size: 20,),


          ],
        ),
        const Divider(),
        Container(
          height: 395,
          width: 395,
          child: Image.asset('images/trigu1.jfif',
            fit: BoxFit.fill,),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                SizedBox(width: 15),
                Icon(Icons.favorite_rounded,
                  color: Colors.red,
                  size: 32,),
                SizedBox(width: 15),
                Icon(Icons.messenger_outline_outlined,
                  color: Colors.black,
                  size: 30,),
                SizedBox(width: 15),
                Icon(Icons.share_outlined,
                  color: Colors.black,
                  size: 30,),
                SizedBox(width: 15),
              ],

            ),
            Row(
              children: const [
                Icon(Icons.save_alt_rounded,
                  color: Colors.black,
                  size: 30,),
                SizedBox(width: 15),
              ],
            ),


          ],
        ),
        SizedBox(height: 12),
        Row(

          children: const [
            SizedBox(width:12),
            Text('Liked by iamharshbeniwal and 7782 others',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15,
              ),),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: const [
            SizedBox(width:12),
            Text('Nishay2306',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15,
              ),),
            Text('  Always calm',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(

          children: const [
            SizedBox(width:12),
            Text('View all 355 comments',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(width:5),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('images/akash.jfif'),
                ),
                SizedBox(width:10),
                Text('TheAkashGupta',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,

                  ),),

              ],
            ),
            const Icon(Icons.more_vert_rounded,
              color: Colors.black,
              size: 20,),


          ],
        ),
        const Divider(),
        Container(
          height: 395,
          width: 395,
          child: Image.asset('images/akash1.jfif',
            fit: BoxFit.fill,),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                SizedBox(width: 15),
                Icon(Icons.favorite_rounded,
                  color: Colors.red,
                  size: 32,),
                SizedBox(width: 15),
                Icon(Icons.messenger_outline_outlined,
                  color: Colors.black,
                  size: 30,),
                SizedBox(width: 15),
                Icon(Icons.share_outlined,
                  color: Colors.black,
                  size: 30,),
                SizedBox(width: 15),
              ],

            ),
            Row(
              children: const [
                Icon(Icons.save_alt_rounded,
                  color: Colors.black,
                  size: 30,),
                SizedBox(width: 15),
              ],
            ),


          ],
        ),
        SizedBox(height: 12),
        Row(

          children: const [
            SizedBox(width:12),
            Text('Liked by Avmfans and 3452 others',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15,
              ),),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: const [
            SizedBox(width:12),
            Text('TheAkashGupta',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15,
              ),),
            Text('  Book ASAP !',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(

          children: const [
            SizedBox(width:12),
            Text('View all 1457 comments',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),),
          ],
        ),
    SizedBox(height: 25),
    ]

    ),
        ],
      ),
    );
  }
}

