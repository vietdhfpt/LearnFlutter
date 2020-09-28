import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/splash/components/body.dart';
import 'package:learn_flutter/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/spllash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
