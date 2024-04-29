import 'package:flutter/material.dart';

class LocationGeo extends StatefulWidget {
  const LocationGeo({Key? key}) : super (key :key);

@override 
_LocationGeoState createState() => _LoctionGeoState();

}

class _LoactionGeoState extends State<LoacationGeo> {
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Geolocation)),
      body: Column(children: [
        Text('Location', style: TextStyle(fontSize:20)),
      ],)
    )
  }
}