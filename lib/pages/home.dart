import 'package:flutter/material.dart';
import 'package:watchpets/alert/selecMascota.dart';
import 'package:watchpets/pages/logOut.dart';
import 'package:watchpets/pages/myProfile.dart';
import 'package:watchpets/pets/myPets.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectDrawerItem = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return MyProfile();
      case 1:
        return MyProfile();
      case 2:
        return MyPet();
      case 3:
        return LogOut();
    }
  }

  _onSelectItem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xff052035),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SelecMas()));
        },
        child: const Icon(Icons.add),
        backgroundColor: Color(0xff4cc443),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xff052035),
              ),
              accountName: Text("Manuel Condori"),
              accountEmail: Text("2828@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xff4cc443),
                child: Text(
                  "M",
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              selected: (0 == _selectDrawerItem),
              title: Text('Home'),
              onTap: () {
                _onSelectItem(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              selected: (1 == _selectDrawerItem),
              title: Text('My Profile'),
              onTap: () {
                _onSelectItem(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.pets_rounded),
              selected: (2 == _selectDrawerItem),
              title: Text('My Pets'),
              onTap: () {
                _onSelectItem(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              selected: (3 == _selectDrawerItem),
              title: Text('Log Out'),
              onTap: () {
                _onSelectItem(3);
              },
            ),
            Divider(),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
