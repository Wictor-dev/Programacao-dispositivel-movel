import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Mudar Números'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int number = 1;

  void increaseNumber() {
    setState(() {
      number += 1;
    });
  }

  void decreaseNumber() {
    setState(() {
      if (number > 0) {
        number -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Text(
              '$number',
              style: TextStyle(fontSize: 32),
            ),
          ),
          Container(
            height: 500,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                      color: Colors.cyan[300],
                      child: TextButton(
                          onPressed: () {
                            increaseNumber();
                          },
                          child: Text('ADICIONAR', style: TextStyle(color: Colors.cyan[900], fontWeight: FontWeight.bold),)
                          ),
                    )
                      ),
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          decreaseNumber();
                        },
                        child: Text('REMOVER', style: TextStyle(color: Colors.cyan[900], fontWeight: FontWeight.bold),)
                        ))
              ],
            ),
          ),
        ],
      ),
      // child: Row(
      //
      // ),
    );
  }
}
