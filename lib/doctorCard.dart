import 'package:flutter/material.dart';

class DoctorCard extends StatefulWidget {
  @override
  _DoctorCardState createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Tapped');
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Dr. ABC Kumar',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Open Now',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(
                'MBBS',
                style: TextStyle(fontSize: 10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    './assets/hospital.png',
                    height: 80,
                  ),
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
                            Text('Next Available Slots:',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('07:00AM & 09:00PM',
                                style: TextStyle(fontSize: 11)),
                            Text('01:40PM, Today',
                                style: TextStyle(fontSize: 11)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Specializations:',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('GENRAL SURGERY, CARDIILOGY',
                                style: TextStyle(fontSize: 11)),
                            Text('0.3KM',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.green)),
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
      ),
    );
  }
}
