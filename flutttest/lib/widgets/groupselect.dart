import 'package:flutter/material.dart';
import 'creategroup.dart';

class GroupSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Wähle Gruppe")),
      body: Column(
        children: [
          ElevatedButton(
            child: Text("+"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateGroup(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
