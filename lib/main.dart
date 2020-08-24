import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exaple Button'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){}
        ),
        body: ExButton(),
      ),
    );
  }
}

class ExButton extends StatefulWidget {
  @override
  _ExButtonState createState() => _ExButtonState();
}

class _ExButtonState extends State<ExButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RaisedButton(
            child: Text("RaisedButton"),
            onPressed: (){},
          ),
          FlatButton(onPressed: (){},
            child: Text("FlatButton")
            ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            buttonHeight: 50.0,
            children: [
              RaisedButton(onPressed: (){},child: Text('Click1'),),
              RaisedButton(onPressed: (){},child: Text('Click2')),
              RaisedButton(onPressed: (){},child: Text('Click3')),
            ],
          ),
        ],
      ),
    );
  }
}