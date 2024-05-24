import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Card(
        child: Text('This is a card'),
        color: Colors.red,
        margin: EdgeInsets.all(64.0),
        elevation: 8,
        borderOnForeground: false,
        shadowColor: Colors.blue,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }
}
