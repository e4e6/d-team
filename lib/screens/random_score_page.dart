import 'dart:math';

import 'package:flutter/material.dart';

class RandomScorePage extends StatefulWidget {
  @override
  _RandomScorePageState createState() => _RandomScorePageState();
}

class _RandomScorePageState extends State<RandomScorePage> {
  List<int> scores = [];
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Score App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Scores: ${scores.toString()}',
            ),
            ElevatedButton(
              child: Text('Finish'),
              onPressed: () {
                setState(() {
                  // Generate a random score between 1 and 100
                  int randomScore = 1 + random.nextInt(100);

                  // Add the random score to the list
                  scores.add(randomScore);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
