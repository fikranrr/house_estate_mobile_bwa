import 'package:flutter/material.dart';
import 'package:house_estate_mobile/explore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ExplorePage(),
      ),
    );
  }
}
