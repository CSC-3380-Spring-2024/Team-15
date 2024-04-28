import 'package:flutter/material.dart';
/// Using the flutter navigation buttom widget

void main() => runApp(const Nav());

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavBar(),
    );
  }
}

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            onTabChange: (index){
              print(index);
            };
            currentPageIndex = index;
          });
        },
        indicatorColor: Color.fromARGB(255, 23, 17, 180),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.beach_access),
            icon: Icon(Icons.beach_access_outlined),
            label: 'Weather Hub',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.videogame_asset)),
            label: 'Play',
          )
      ],