import 'package:flutter/material.dart';
import 'package:learn_flutter/constants.dart';
import 'package:learn_flutter/routes.dart';
import 'package:learn_flutter/screens/splash/splash_screen.dart';

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
        fontFamily: "Muli",
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
