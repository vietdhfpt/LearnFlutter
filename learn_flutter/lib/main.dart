import 'package:flutter/material.dart';
import 'package:learn_flutter/routes.dart';
import 'package:learn_flutter/screens/splash/splash_screen.dart';
import 'package:learn_flutter/theme.dart';

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
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
