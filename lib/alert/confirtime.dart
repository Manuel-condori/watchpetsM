import 'package:flutter/material.dart';

class ConfirTime extends StatefulWidget {
  ConfirTime({Key? key}) : super(key: key);

  @override
  _ConfirTimeState createState() => _ConfirTimeState();
}

class _ConfirTimeState extends State<ConfirTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Location Services'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                /*Navigator.push(
              context, MaterialPageRoute(builder: (context) => SelecMas()));*/
              },
              child: const Icon(Icons.arrow_forward),
              backgroundColor: Color(0xff4cc443),
            )
        )
    );
  }
}
