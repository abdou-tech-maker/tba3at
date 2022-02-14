import 'package:flutter/material.dart';

class Welcoming extends StatefulWidget {
  @override
  _WelcomingState createState() => _WelcomingState();
}

class _WelcomingState extends State<Welcoming> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcoming Page"),
      ),
    );
  }
}
