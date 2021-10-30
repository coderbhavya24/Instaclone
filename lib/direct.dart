import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class chats extends StatelessWidget {
  const chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        iconTheme: const  IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text('bhavya_kk',
            style: TextStyle(
    color: Colors.black,
    ),),
        bottom:  PreferredSize(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text('Chats',
                  style: TextStyle(
                      fontSize: 17,
                  )),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text('Rooms',
                      style: TextStyle(
                        fontSize: 17,
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text('Requests',
                      style: TextStyle(
                        fontSize: 16,
                      )),
                ),
              ],
            ),
            preferredSize: Size.fromHeight(35.0)),
        actions: const [Icon(
          Icons.call,
          color: Colors.black,
          size: 32,
        ),
          SizedBox(
            width: 13,

          ),
          Icon(
            Icons.drive_file_rename_outline,
          size: 32,
            color:  Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
     body: ListView(padding: const EdgeInsets.all(8),
     children: <Widget> [
       Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Row(

             children: [
               CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage('images/ashish.jfif'),
               ),
               SizedBox(
                 width: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text('Avmfans',
                         style: TextStyle(
                         fontWeight: FontWeight.bold,
                         ),),
                       Text('Sent a photo . 2h',
                           style: TextStyle(
                             color: Colors.black87,
                           )),
                     ],
                   ),
                   SizedBox(
                     width: 147,
                   ),
                   Icon(Icons.camera_alt_outlined,
                     color: Colors.black,
                     size: 32,
                   )
                 ],),
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Row(

             children: [
               CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage('images/harry.jfif'),
               ),
               SizedBox(
                 width: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: const [
                   Text('codewithharry',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                   ),),
                   Text('Liked a message . 5d',
                   style: TextStyle(
                     color: Colors.grey,
                   )),
                 ],
                 ),
                 SizedBox(
                   width: 120,
                 ),
                 Icon(Icons.camera_alt_outlined,
                 color: Colors.black,
                 size: 32,
                 )
               ],),
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Row(

             children: [
               CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage('images/carry.jfif'),
               ),
               SizedBox(
                 width: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text('Ajey.Nagar',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),),
                       Text('Liked a message . 2h',
                           style: TextStyle(
                             color: Colors.grey,
                           )),
                     ],
                   ),
                   SizedBox(
                     width: 120,
                   ),
                   Icon(Icons.camera_alt_outlined,
                     color: Colors.black,
                     size: 32,
                   )
                 ],),
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Row(

             children: [
               CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage('images/harsh.jfif'),
               ),
               SizedBox(
                 width: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text('iamharshbeniwal',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),),
                       Text('Sent a message . 23m',
                           style: TextStyle(
                             color: Colors.black87,
                           )),
                     ],
                   ),
                   SizedBox(
                     width: 113,
                   ),
                   Icon(Icons.camera_alt_outlined,
                     color: Colors.black,
                     size: 32,
                   )
                 ],),
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Row(

             children: [
               CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage('images/trigu.jfif'),
               ),
               SizedBox(
                 width: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text('Nishay2306',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),),
                       Text('Liked a message . 5h',
                           style: TextStyle(
                             color: Colors.grey,
                           )),
                     ],
                   ),
                   SizedBox(
                     width: 120,
                   ),
                   Icon(Icons.camera_alt_outlined,
                     color: Colors.black,
                     size: 32,
                   )
                 ],),
             ],
           ),
           SizedBox(
             height: 10,
           ),

           Row(

             children: [
               CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage('images/tanmay.jfif'),
               ),
               SizedBox(
                 width: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text('TanmayBhatOP',
                         style: TextStyle(
                        fontWeight: FontWeight.bold,
                         ),),
                       Text('Liked a message . 5d',
                           style: TextStyle(
                             color: Colors.grey,
                           )),
                     ],
                   ),
                   SizedBox(
                     width: 120,
                   ),
                   Icon(Icons.camera_alt_outlined,
                     color: Colors.black,
                     size: 32,
                   )
                 ],),
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Row(

             children: [
               CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage('images/zakir.jfif'),
               ),
               SizedBox(
                 width: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text('Khan.Zakir',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),),
                       Text('Liked a message . 2d',
                           style: TextStyle(
                             color: Colors.grey,
                           )),
                     ],
                   ),
                   SizedBox(
                     width: 120,
                   ),
                   Icon(Icons.camera_alt_outlined,
                     color: Colors.black,
                     size: 32,
                   )
                 ],),
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Row(

             children: [
               CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage('images/akash.jfif'),
               ),
               SizedBox(
                 width: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text('TheAkashGupta',
                         style: TextStyle(
                    fontWeight: FontWeight.bold,
                         ),),
                       Text('Sent a photo . 23w',
                           style: TextStyle(
                             color: Colors.black87,
                           )),
                     ],
                   ),
                   SizedBox(
                     width: 136,
                   ),
                   Icon(Icons.camera_alt_outlined,
                     color: Colors.black,
                     size: 32,
                   )
                 ],),
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Row(

             children: [
               CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage('images/gaurav.jfif'),
               ),
               SizedBox(
                 width: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text('Flyingbeast',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),),
                       Text('Liked a message . 4h',
                           style: TextStyle(
                             color: Colors.grey,
                           )),
                     ],
                   ),
                   SizedBox(
                     width: 120,
                   ),
                   Icon(Icons.camera_alt_outlined,
                     color: Colors.black,
                     size: 32,
                   )
                 ],),
             ],
           ),
           SizedBox(
             height: 10,
           ),


           Row(

             children: [
               CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage('images/bhuvan.jfif'),
               ),
               SizedBox(
                 width: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text('BBkivines',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),),
                       Text('Liked a message . 5d',
                           style: TextStyle(
                             color: Colors.grey,
                           )),
                     ],
                   ),
                   SizedBox(
                     width: 120,
                   ),
                   Icon(Icons.camera_alt_outlined,
                     color: Colors.black,
                     size: 32,
                   )
                 ],),
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Row(

             children: [
               CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage('images/tanmay.jfif'),
               ),
               SizedBox(
                 width: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text('TanmayBhatOP',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),),
                       Text('Liked a message . 5d',
                           style: TextStyle(
                             color: Colors.grey,
                           )),
                     ],
                   ),
                   SizedBox(
                     width: 120,
                   ),
                   Icon(Icons.camera_alt_outlined,
                     color: Colors.black,
                     size: 32,
                   )
                 ],),
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Row(

             children: [
               CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage('images/zakir.jfif'),
               ),
               SizedBox(
                 width: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text('Khan.Zakir',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),),
                       Text('Liked a message . 2d',
                           style: TextStyle(
                             color: Colors.grey,
                           )),
                     ],
                   ),
                   SizedBox(
                     width: 120,
                   ),
                   Icon(Icons.camera_alt_outlined,
                     color: Colors.black,
                     size: 32,
                   )
                 ],),
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Row(

             children: [
               CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage('images/akash.jfif'),
               ),
               SizedBox(
                 width: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text('TheAkashGupta',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),),
                       Text('Sent a photo . 23w',
                           style: TextStyle(
                             color: Colors.black87,
                           )),
                     ],
                   ),
                   SizedBox(
                     width: 136,
                   ),
                   Icon(Icons.camera_alt_outlined,
                     color: Colors.black,
                     size: 32,
                   )
                 ],),
             ],
           ),

         ],
       ),

     ],),
    );
  }
}
