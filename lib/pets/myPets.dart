import 'package:flutter/material.dart';

class MyPet extends StatefulWidget {
  MyPet({Key? key}) : super(key: key);

  @override
  _MyPetState createState() => _MyPetState();
}

class _MyPetState extends State<MyPet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
        title: Text('my pets'),
      )),
    );
  }
}
