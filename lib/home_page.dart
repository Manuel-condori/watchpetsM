import 'package:flutter/material.dart';
import 'package:watchpets/services/authservice.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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