import 'package:flutter/material.dart';
import 'package:myfirst_app/main.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color maintheme = const Color.fromARGB(255, 50, 2, 78);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('My Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: maintheme,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: size.width * 0.8,
                height: size.height * 0.2,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 5.0,
                ),
                decoration: BoxDecoration(
                    color: const Color(0xFFe0e0e0),
                    borderRadius: BorderRadius.circular(
                      (10.0),
                    )),
                child: Text(
                  'Welcome to your Profile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
            const SizedBox(
              height: 20.0,
            ),
            Container(
                width: size.width * 0.8,
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  padding: const EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: const Color.fromARGB(255, 50, 2, 78),
                  child: Text('Go Back To Homepage',
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 15.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold)),
                )),
          ],
        ),
      ),
    );
  }
}
