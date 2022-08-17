import 'package:flutter/material.dart';
import 'package:myfirst_app/notifications.dart';
import 'package:myfirst_app/payments.dart';
import 'package:myfirst_app/profile.dart';
import 'package:myfirst_app/settings.dart';
import 'login.dart';

class MyHomePage extends StatefulWidget {
  final String fname, phone, email;
  const MyHomePage(
      {Key? key,
      required this.fname,
      required this.phone,
      required this.email,
      required this.title})
      : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: non_constant_identifier_names
  final _Scaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _Scaffold,
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 50, 2, 78),
              ),
              accountName: Text('Achinike Winifred'),
              accountEmail: Text('winifredachinike@gmail.com'),
              currentAccountPicture: CircleAvatar(
                // child: Text('A'),
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/564x/a0/58/fa/a058faa1f695f4821cd81aa4297ea968.jpg'),
              ),
            ),
            ListTile(
              tileColor: Colors.white,
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              subtitle: const Text('Go back home'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.person),
              title: Text('My Profile'),
              subtitle: Text('Go to your account profile'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => profile(),
                    ));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              subtitle: Text('Go to your account settings'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => settings(),
                    ));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              subtitle: Text('Go to notifications'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => notifications(),
                    ));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.payment),
              title: Text('Payments'),
              subtitle: Text('Go to payments'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => payments(),
                    ));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.payment),
              title: Text('Log-Out'),
              subtitle: Text('Leave the app'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('To-Do App'),
        centerTitle: true,
        elevation: 0,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(Icons.menu),
        // ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    _Scaffold.currentState!.openDrawer();
                  },
                  child: const Text(
                    'Click ME!',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                const Text.rich(TextSpan(text: '')),
                RichText(
                  text: TextSpan(
                    text: 'FullName: ${widget.fname},',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                          text: 'Phone number: ${widget.phone}',
                          style: TextStyle(
                            color: Color.fromARGB(255, 50, 2, 78),
                            fontSize: 18,
                          )),
                      TextSpan(text: 'Email Address: ${widget.email}')
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
