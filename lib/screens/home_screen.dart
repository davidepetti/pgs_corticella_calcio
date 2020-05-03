import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './news_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    NewsScreen(),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.blue)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('PGS Corticella Calcio'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.blue[600],
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.users),
            title: Text('Team'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.trophy),
            title: Text('Classifica'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.calendar),
            title: Text('Calendario'),
          ),
        ],
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
