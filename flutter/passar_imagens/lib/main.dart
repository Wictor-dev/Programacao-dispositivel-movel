import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Mudar Imagens",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: ChangeImage(),
    ),
  ));
}

class ChangeImage extends StatefulWidget {
  @override
  State<ChangeImage> createState() => _ChangeImageState();
}

class _ChangeImageState extends State<ChangeImage> {
  int number = 1;
  var likes = [false, false, false, false, false, false];

  void avanceImage() {
    setState(() {
      if (number < 6) {
        number += 1;
        print(likes);
      }
    });
  }

  void retrocedeImage() {
    setState(() {
      if (number > 1) {
        number -= 1;
        print(likes);
      }
    });
  }

  void like() {
    setState(() {
      likes[number - 1] = !likes[number - 1];
      // 0 is false and 1 is true
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Expanded(
          child: Image.asset('images/dice$number.png'),
        ),
        Expanded(
          child: TextButton(
              onPressed: () {
                like();
              },
              child: likes[number - 1]
                  ? Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 50,
                    )
                  : Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 50,
                    )),
        ),
        Row(children: <Widget>[
          Expanded(
            child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.blue)))),
                onPressed: () {
                  avanceImage();
                },
                child: Text("AVANÇAR")),
          ),
          Expanded(
              child: Container(
            color: Colors.blue[100],
            child: TextButton(
              onPressed: () {
                retrocedeImage();
              },
              child: Text(
                'VOLTAR',
                style: TextStyle(
                    color: Colors.blue[900], fontWeight: FontWeight.bold),
              ),
            ),
          ))
        ])
      ]),
    );
  }
}
