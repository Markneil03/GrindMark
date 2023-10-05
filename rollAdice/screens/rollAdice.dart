import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceSceen extends StatefulWidget {
  RollDiceSceen({super.key});

  @override
  State<RollDiceSceen> createState() => _RollDiceSceenState();
}

class _RollDiceSceenState extends State<RollDiceSceen> {
  int active = 2;
  List<String> diceImage1 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHGIB_6JqfbY0a5QHz7G3djE3j6o0nb-nAYg&usqp=CAU',
    'https://upload.wikimedia.org/wikipedia/commons/1/1c/6sided_dice_%28cropped%29.jpg',
    'https://cdn.psychologytoday.com/sites/default/files/styles/article-inline-half-caption/public/field_blog_entry_images/2020-08/cube-689618_1920.jpg?itok=UZGMas9I',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blue.shade300,
          Colors.green.shade300,
        ])),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('ROLL DICE'),
            Image.network(
              diceImage1[active],
            ),
            TextButton(
              onPressed: () {
                print("Button Pressed");
                var ranNum = Random().nextInt(2);
                setState(() {
                  active = ranNum;
                });
              },
              child: Text('Roll!'),
            )
          ],
        )),
      ),
    );
  }
}
