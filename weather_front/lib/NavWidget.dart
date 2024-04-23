import 'package:flutter/material.dart';

@override 

Widget HomeNav(BuildContext){
return Scaffold(
  backgroundColor:( const Color.fromARGB(255, 6, 91, 160)),
  appBar: AppBar(
    title: Text('WeatherTether'),
  ),
  body: _children[_currentIndex],
  bottomNavigationBar: :BottomNavBar(
    ontTap: onTabTapped,
    currentIndex: _currentIndex,
    items:[
      new Icon(
        color:(const color.fromARGB
        icon: Icon(Icons.home),
        title: Text('Home'),
        ),
        new Icon(
          icon: Icon(Icons.play),
          title: Text('Play'),
          )
    ],
    ),
);
}