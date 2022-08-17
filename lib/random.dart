//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffa7c6ee),
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: const [
          Icon(Icons.account_balance_sharp),
          //      IconButton(
          //       onPressed: () {},
          //       // icon: const Icon(Icons.access_alarm),)
          // )
        ],
        title: const Text('Welcome'),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children:  [
      //     const Text("Hello World", style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 28, fontWeight: FontWeight.w900), ),

      //     Container(
      //

      //     ),

      //     //  SizedBox(height:120, width:120,
      //     //   child:Image(image: AssetImage('assets/carr.png'),))

      //   ]),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/workout2.jpg"),
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode( BlendMode.darken)
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Container(
                margin: const EdgeInsets.only(left: 70.0),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.black),
                    color: Colors.red)),
            const Text(
              'ONE UP',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w900),
            ),
            const Text(
              'FITNESS',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                letterSpacing: 4,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'welcome to ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'start today',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 192, 191, 191),
                  fontSize: 15,
                  fontWeight: FontWeight.w900),
            ),
            FractionallySizedBox(
              widthFactor: 0.4,
              child: MaterialButton(
                color: Colors.red,
                onPressed: () {},
                child: const Text(
                  "START NOW!",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  
                ),
                )
            ),
            // MaterialButton(
            //   color: Colors.red ,
            //   height: 35.00,
            //   minWidth: 50.00,
            //   // padding: EdgeInsets.all(25) ,

            //     onPressed: () {},
            //     child: const Text(
            //       "START NOW!",
            //       style: TextStyle(fontSize: 20.0, color: Colors.white),
                  
            //     ),)
//                 SizedBox(
//   width: 100, // <-- Your width
//   height: 50, // <-- Your height
//   child: ElevatedButton(...)
// )
          ],
        ),
      ),
    );
  }
}
