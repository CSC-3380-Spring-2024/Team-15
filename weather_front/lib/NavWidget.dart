
import 'package:flutter/material.dart';
import 'HomePage.dart'; 
import 'package: weather_front/Play.dart'; 

void main() => runApp(NavBar());

class NavBar extends StatelessWidget {
  const NavBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: HomePage(), // Set HomePage as the initial screen
    );
  }
}
