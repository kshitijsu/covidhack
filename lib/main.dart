import 'package:flutter/material.dart';
import './screens/explore.dart';
import './screens/search.dart';
import './screens/history.dart';
import './screens/profile.dart';
import './screens/bookAppointment.dart';
import './screens/json.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomePage(),
        '/profile': (context) => Profile(),
        '/bookAppointment': (context) => BookAppointment()
      },
      home: JsonRender(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [Explore(), Search(), History(), Profile()];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTappedBar,
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_hospital,
                  color: Colors.teal,
                ),
                title: Text(
                  'DOCTORS',
                  style: TextStyle(color: Colors.teal, fontSize: 10),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on,
                  color: Colors.teal,
                ),
                title: Text(
                  'CITY',
                  style: TextStyle(color: Colors.teal, fontSize: 10),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.schedule,
                  color: Colors.teal,
                ),
                title: Text(
                  'HISTORY',
                  style: TextStyle(color: Colors.teal, fontSize: 10),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.teal,
                ),
                title: Text(
                  'USER',
                  style: TextStyle(color: Colors.teal, fontSize: 10),
                )),
          ]),
    );
  }
}
