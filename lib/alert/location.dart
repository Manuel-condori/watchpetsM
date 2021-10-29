import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:watchpets/alert/confirtime.dart';

class LocationApp extends StatefulWidget {
  LocationApp({Key? key}) : super(key: key);

  @override
  _LocationAppState createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp> {
  //variable que contien la locacion de coordenadas
  var locationMessage = "";

  //crear una funcion que obtendra la ubicacion actual
  void getCurrentLocation() async {
    var position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var lastPosition = await Geolocator().getLastKnownPosition();
    print(lastPosition);
    var lat = position.latitude;
    var long = position.longitude;
    print("$lat, $long");

    setState(() {
      locationMessage = "\nLatitude: $lat, \nLongitude: $long";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/fondomap1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Location Services'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ConfirTime()));
          },
          child: const Icon(Icons.arrow_forward),
          backgroundColor: Color(0xff4cc443),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 46.0,
                color: Colors.green,
              ),
              SizedBox(height: 10.0),
              Text(
                "Get user Local",
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Position $locationMessage"),
              MaterialButton(
                minWidth: 200.0,
                height: 45.0,
                color: Color(0xff4cc443),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: Text('Get current Location',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  getCurrentLocation();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
