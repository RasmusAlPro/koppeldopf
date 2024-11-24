import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:namer_app/widgets/groupselect.dart';
import 'package:provider/provider.dart';




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: GroupSelect(),
        routes: {
          'homepage':(context) => GroupSelect(),
        }
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}
