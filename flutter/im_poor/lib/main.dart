import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: Text('I am Poor'),
        backgroundColor: Colors.cyan[900],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/coal.png'),
        ),
      ),
      )
    )); 
}