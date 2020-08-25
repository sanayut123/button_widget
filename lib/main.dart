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
      home: ExButton(),
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Button'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_box),
        onPressed: (){
          this.setState(() {
            x = x + 100;
          });
        }
      ),
      body: Center(
        child: Text(
          "Counter $x",
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 30.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}