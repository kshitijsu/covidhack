import 'package:flutter/material.dart';

class JsonRender extends StatefulWidget {
  @override
  _JsonRenderState createState() => _JsonRenderState();
}

class _JsonRenderState extends State<JsonRender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Json Rendering')),
      body: Center(
        child: Column(
          children: <Widget>[Text('Json Render'), Text('Text Here')],
        ),
      ),
    );
  }
}
