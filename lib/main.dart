import 'package:flutter/material.dart';
import 'package:tukoapp/screens/home_page.dart';

void main() {
  runApp(TukoApp());
}

class TukoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
