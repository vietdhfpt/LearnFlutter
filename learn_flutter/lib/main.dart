import 'package:flutter/material.dart';
import 'package:learn_flutter/components/constants.dart';
import 'package:learn_flutter/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kBaseColor,
      ),
      home: HomePage(),
    );
  }
}
