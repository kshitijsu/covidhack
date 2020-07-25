import 'package:flutter/material.dart';
import 'package:covidhack/doctorName.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<Doctor> doctornames = [
    Doctor(
      name: 'Dr. A.K. Kumar',
      degrees: 'ORTHOPEDICS',
      status: 'Closed',
      servingHours: '09:00AM - 11:00PM',
      nextAvailableSlot: '12:30PM, Today',
      specializations: 'JOINT SPECIALIST',
    ),
    Doctor(
      name: 'Dr. D.C. Jain',
      degrees: 'MBBS',
      status: 'Open',
      servingHours: '09:00AM - 11:00PM',
      nextAvailableSlot: '12:30PM, Today',
      specializations: 'CHILD SPECIALIST',
    ),
  ];

  Widget doctorTemplate(doc) {
    return Card(
      elevation: 2,
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
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.report_problem,
                      size: 12,
                      color: Colors.red,
                    ),
                    Text(
                      ' Overcrowd Warning',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.red,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/bookAppointment');
                            },
                            color: Colors.teal,
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

  Icon customIcon = Icon(Icons.search);
  Widget customSearch = Text('Search Doctor Here');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: customSearch,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: customIcon,
              onPressed: () {
                setState(() {
                  if (this.customIcon.icon == Icons.search) {
                    this.customIcon = Icon(Icons.cancel);
                    this.customSearch = TextField(
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(border: InputBorder.none),
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    );
                  } else {
                    this.customIcon = Icon(Icons.search);
                    this.customSearch = Text('Search City Here');
                  }
                });
              })
        ],
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: <Widget>[
        //     Text('Search Doctor'),
        //     IconButton(icon: Icon(Icons.search), onPressed: () {})
        //   ],
        // ),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: <Widget>[
          Column(
            children: doctornames
                .map((docDetails) => doctorTemplate(docDetails))
                .toList(),
          ),
          // _children[_currentIndex],
        ],
      ),
    );
  }
}
