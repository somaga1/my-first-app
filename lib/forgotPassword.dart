import 'package:flutter/material.dart';

class forgotPassword extends StatelessWidget {
  const forgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color maintheme = const Color.fromARGB(255, 50, 2, 78);
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Reset Password', style: TextStyle(color: Colors.white)),
        backgroundColor: maintheme,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/password.png',
              height: size.height * 0.45,
            ),
            Container(
              width: size.width * 0.8,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 5.0,
              ),
              decoration: BoxDecoration(
                  color: const Color(0xFFe0e0e0),
                  borderRadius: BorderRadius.circular(
                    (50.0),
                  )),
              child: TextField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: maintheme,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Email or Username',
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
                width: size.width * 0.8,
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () {},
                  padding: const EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: const Color.fromARGB(255, 50, 2, 78),
                  child: Text('Send Reset Link',
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
