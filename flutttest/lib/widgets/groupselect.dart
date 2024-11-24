import 'package:flutter/material.dart';
import 'creategroup.dart';

class GroupSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(color: theme.colorScheme.onPrimary,);
    TextStyle(color: theme.colorScheme.onPrimary, fontSize: 20);

    return Scaffold(
      appBar: AppBar(title: const Text("Wähle Gruppe")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary, // Set the background color
                minimumSize: Size(200, 60),  // width: 200, height: 60
              ),
              child: Text("+", style: style),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateGroup(),
                  ),
                );
              },
            )
          ]  
        )  
      ),
    );
  }
}