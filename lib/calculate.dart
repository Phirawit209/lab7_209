import 'package:flutter/material.dart';
import 'package:lab_07_209/main.dart';

void main(){
  runApp(NewScreen());
}

class NewScreen extends StatefulWidget {
  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Output Analysis BMI"),
      ),
    );
  }
  }
