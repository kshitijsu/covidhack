import 'package:flutter/material.dart';
import './doctorName.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Doctor> doctornames = [
    Doctor(
      name: 'Dr. A.K. Kumar',
      degrees: 'ORTHOPEDICS',
      status: 'Closed',
      servingHours: '09:00AM - 11:00PM',
      nextAvailableSlot: '12:30PM, Today',
      specializations: 'JOINT SPECIALIST',
    ),
  ];

  Widget doctorTemplate(doc) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '${doc.name}',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${doc.status}',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '${doc.degrees}',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Overcrowd Warning',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset(
                  './assets/doc.png',
                  height: 100,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Serving Hours:',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                          Text('Next Available Slot:',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('${doc.servingHours}',
                              style: TextStyle(fontSize: 11)),
                          Text('${doc.nextAvailableSlot}',
                              style: TextStyle(fontSize: 11)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                'Specializations:',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              Text('${doc.specializations}',
                                  style: TextStyle(fontSize: 11)),
                            ],
                          ),
                          RaisedButton(
                            child: Text(
                              'Book',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.location_on,
                    size: 35,
                  ),
                ),
                Text('Location'),
              ],
            ),
          ],
        ),
        centerTitle: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                  size: 45,
                ),
                onPressed: () {}),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  'Nearby, Home',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: RaisedButton(
                  child: Text('Sort & Filter',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: () {},
                  color: Colors.green,
                ),
              )
            ],
          ),
          Column(
            children: doctornames
                .map((docDetails) => doctorTemplate(docDetails))
                .toList(),
          )
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.green,
            ),
            title: Text(
              'EXPLORE',
              style: TextStyle(color: Colors.green, fontSize: 10),
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.green,
            ),
            title: Text(
              'SEARCH',
              style: TextStyle(color: Colors.green, fontSize: 10),
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.schedule,
              color: Colors.green,
            ),
            title: Text(
              'HISTORY',
              style: TextStyle(color: Colors.green, fontSize: 10),
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.green,
            ),
            title: Text(
              'USER',
              style: TextStyle(color: Colors.green, fontSize: 10),
            )),
      ]),
    );
  }
}
