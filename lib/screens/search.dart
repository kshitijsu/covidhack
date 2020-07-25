import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Icon customIcon = Icon(Icons.search);
  Widget customSearchBar = Text('Search City Here');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: customSearchBar,
        actions: <Widget>[
          IconButton(
              icon: customIcon,
              onPressed: () {
                setState(() {
                  if (this.customIcon.icon == Icons.search) {
                    this.customIcon = Icon(Icons.cancel);
                    this.customSearchBar = TextField(
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(border: InputBorder.none),
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    );
                  } else {
                    this.customIcon = Icon(Icons.search);
                    this.customSearchBar = Text('Search City Here');
                  }
                });
              })
        ],
      ),
    );
  }
}
