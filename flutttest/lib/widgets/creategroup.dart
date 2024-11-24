import 'package:flutter/material.dart';


class CreateGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Erstelle Gruppe")),
      body: Column(
        children: [
          ElevatedButton(
            child: Text("+"),
            onPressed: () {
              Navigator.pushNamed(context, 'homepage');
            }
          )
        ],
      ),
    );
  }
}