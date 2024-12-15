import 'package:flutter/material.dart';

class InsertScore extends StatefulWidget {
  @override
  State<InsertScore> createState() => _InsertScoreState();
}

class _InsertScoreState extends State<InsertScore> {
  //const InsertScore({super.key});
  int score = 120;

  bool selected = false;

  var c = Colors.purple[200];

  void updateColor(int nonsense) {
    setState(() {
      if (selected) {
        c = Colors.purple[400];
        selected = !selected;
      } else {
        c = Colors.purple[200];
        selected = !selected;
      }
      score = (score + 50) % 500;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Punkte Eingabe'),),
      body: ListView(
        children: [
        Container(height: 120, color: Colors.black,
        child: Row(
          children: [
            Expanded(child: Container(
              color: Colors.blue[300], 
              child: Center(
                child: Text("Keine " + score.toString(), textScaler: TextScaler.linear(3),)
                ),
              )
            ),
            Expanded(child: Container(color: const Color.fromARGB(255, 239, 120, 120))),
          ],
        ),
        ),
        GestureDetector( 
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: 140,              
            color: c                         
          ),
          onTap: () => {
          updateColor(0),
          print("lolololo")
          }
        ),
        Container(height: 300, color: Colors.blue[100],)
      ])
    );
    
    
  }
}