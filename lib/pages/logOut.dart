import 'package:flutter/material.dart';
import 'package:watchpets/services/authservice.dart';

class LogOut extends StatefulWidget {
  @override
  _LogOutState createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('You are logged in'),
          ElevatedButton(
              onPressed: () {
                AuthService().signOut();
              },
              child: Center(child: Text('LOG OUT')))
        ]));
  }
}
