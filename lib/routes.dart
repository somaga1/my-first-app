import 'package:flutter/material.dart';
import 'package:myfirst_app/login.dart';
import 'package:myfirst_app/mainScreen.dart';
import 'package:myfirst_app/profile.dart';

class MyAppRoutes {
  Map<String, Widget Function(BuildContext)> routeSetting = {
    // '/': (context) => MyHomePage(title: 'title'),
    // the default initial screen is the single slash unless you specify by using initial route
    '/login': (context) => Login(),
    '/profile': (context) => profile(),
  };
}
