import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  String name="Harsh";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

