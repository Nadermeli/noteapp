import 'package:flutter/material.dart';
import 'package:nader_notes_app/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      theme:
          ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light),
      home: const HomeScreen(),
    );
  }
}
