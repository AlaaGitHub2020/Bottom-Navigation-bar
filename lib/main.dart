import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Bottom Navigation Example',
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<MyHome> {
  int _currentIndex = 0;

  final mytabs = [
    Center(
      child: Text(
        'MyHome',
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.redAccent,
        ),
      ),
    ),
    Center(
      child: Text(
        'Mysearch',
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.yellow,
        ),
      ),
    ),
    Center(
      child: Text(
        'MySettings',
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.green,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'Bottom Navigation Example',
          style: TextStyle(
            fontSize: 29.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: mytabs[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        selectedFontSize: 25.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Home'),
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            title: Text('Search'),
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            title: Text('Settings'),
            backgroundColor: Colors.green,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
