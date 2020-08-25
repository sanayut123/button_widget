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
          title: Text('Example Button'),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: (){}
        // ),
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
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Counter $x",
            style: TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
              child: Text("Click +1"),
              onPressed: (){setState(() {x = x + 1;});}
              ),
              RaisedButton(
              child: Text("Click +10"),
              onPressed: (){setState(() {x = x + 10;});}
              ),
              RaisedButton(
              child: Text("Click +100"),
              onPressed: (){setState(() {x = x + 100;});}
              ),
            ],
          ),          
        ],
      ),
    );
  }
}