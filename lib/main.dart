import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myclone/page.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  // _formKey = GlobalKey<FormState>();
  bool toggle= false;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 34, ),
                alignment: Alignment.topCenter,
                child:
                  const Text(
                    'English(India)',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    )

                  ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 37),
                alignment: Alignment.topCenter,
                child:
                const Icon( Icons.keyboard_arrow_down_sharp,
                color: Colors.grey,

                size: 22,
                ),
              ),
            ],
          ),
          Container(

            padding: const EdgeInsets.only(top: 170,bottom: 70),
            alignment: Alignment.center,
            child: const Text(
              'Instagram',
              style: TextStyle(
                fontSize: 50,

                fontFamily: 'Billabong'
              ),
            )
          ),
          SizedBox(
            height:50, //height of button
            width: 350,

            child: TextFormField(

              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone number,email or username',
              ),
            ),
          ),
         const SizedBox(
              height:20,
            ),

            SizedBox(
              height:50, //height of button
              width:350,
              child: TextFormField(
              controller: passwordController,

                obscureText: !toggle,

              decoration:  InputDecoration(
                suffixIcon:   IconButton(
                    icon: toggle
                        ? const Icon(Icons.visibility)
                        : const Icon(
                      Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        toggle = !toggle;
                      });
                    }),
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          const SizedBox(
            height:20,
          ),
          SizedBox(

            height:50, //height of button
            width:350, //width of button
              child:ElevatedButton(
               child: const Text('Log In'),
                onPressed: (){

                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) {
                       return pages();
                     }
                     ),
                   );

                  },
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 15),
              child: const Text(
                'Forgot your login details?',
         style: TextStyle(
               color: Colors.grey,
               fontSize: 13,

         ),
         )
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 15),
                  child: const Text(
                    ' Get help logging in.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,

                    ),
                  )
              ),
            ],
          ),
        Container(
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              Container(
                width: 168,
                alignment: Alignment.centerLeft,
                child: Column(
                  children: const [

                    Divider(

                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
           SizedBox(
             width: 10,
           ),
           Container(
             padding: const EdgeInsets.only(top: 15),
             child: const Text('OR',
                 style: TextStyle(
                 color: Colors.grey
                  ),
          ),
           ),
              SizedBox(
                width: 10,
              ),
          Container(
            alignment: Alignment.centerRight,
            width: 168,
           child: Column(
            children: const [

             Divider(
             color: Colors.grey,
            ),
           ],
           ),
          ),
         ],
          ),
        ),

          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Log in with Facebook',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(top: 140),
              child: const Text('Don\'t have an account? '
              ,style: TextStyle(
                  fontSize: 13,
                    color:  Colors.grey,
                  ),
              ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(top: 140),
                child: const Text('Sign Up'
                  ,style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color:  Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          // Form(
          //     autovalidateMode: AutovalidateMode.disabled,
          //     key: _formKey,
          //     child: Column(
          //       children: [TextFormField(.
          //         validator: (string val){
          //
          //         },
          //       )],
          //     )),
    ],
      ),
      ],
      ),
    );
  }
}


