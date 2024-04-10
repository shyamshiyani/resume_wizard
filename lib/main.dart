import 'package:flutter/material.dart';
import 'package:resume_wizard/screens/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homepage(),
      },
    ),
  );
}
