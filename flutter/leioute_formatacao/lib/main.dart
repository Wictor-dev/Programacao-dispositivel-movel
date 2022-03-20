import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            buildContainer('Container 1', Colors.red, double.infinity),
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer('Container 2', Colors.yellow, 100),
                buildContainer('Container 3', Colors.green, 100),
              ],
            ),
            SizedBox(height: 10),
            buildContainer('Container 3', Colors.blue, double.infinity),
          ]),
      )
    )
  ));
}

Container buildContainer(String text, Color color, double height){
  return Container(
    width: 100,
    height: height,
    color: color,
    child: Text(text),
  );
}

