// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:myfirst_app/login2.dart';
import 'forgotPassword.dart';
import 'mainScreen.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';


class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();

  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color maintheme = const Color.fromARGB(255, 50, 2, 78);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/login.png',
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
              child: TextFormField(
                controller: _email,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.length < 6) {
                    return 'Email address cannot be less than 6 characters';
                  } else if (!value.contains('@')) {
                    return 'Invalid email address';
                  } else if (!value.contains('.')) {
                    return 'Invalid email address';
                  } else {
                    return null;
                  }
                },
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
                  labelText: 'Email or Username',
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
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 5.0,
              ),
              decoration: BoxDecoration(
                  color: const Color(0xFFe0e0e0),
                  borderRadius: BorderRadius.circular(
                    (50.0),
                  )),
              child: TextFormField(
                controller: _pass,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.length < 6) {
                    return 'Password address cannot be less than 6 characters';
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.done,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock_rounded,
                    color: maintheme,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: maintheme,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Enter Your Password',
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              alignment: Alignment.centerRight,
              width: size.width * 0.8,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => forgotPassword()));
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: maintheme,
                      fontSize: 15.0,
                    ),
                  )),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
                width: size.width * 0.8,
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Login1()));
                  },
                  padding: const EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: const Color.fromARGB(255, 50, 2, 78),
                  child: Text('LOGIN',
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 15.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold)),
                )),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: Alignment.center,
              width: size.width * 0.8,
              child: Text('~Or Login with~',
                  style: TextStyle(
                    color: maintheme,
                    fontSize: 15.0,
                  )),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
                alignment: Alignment.center,
                width: size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        width: size.width * 0.35,
                        child: RaisedButton(
                          elevation: 5.0,
                          onPressed: () {
                            launch('https://www.facebook.com/');
                          },
                          padding: const EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: const Color.fromARGB(255, 50, 2, 78),
                          child: Text('FACEBOOK',
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 15.0,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.bold)),
                        )),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        width: size.width * 0.35,
                        child: RaisedButton(
                          elevation: 5.0,
                          onPressed: () {},
                          padding: const EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: const Color.fromARGB(255, 50, 2, 78),
                          child: Text('GMAIL',
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 15.0,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.bold)),
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    _email = TextEditingController();
    _pass = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _pass.dispose();
    super.dispose();
  }
}
