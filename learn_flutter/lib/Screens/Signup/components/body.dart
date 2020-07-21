import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learn_flutter/Screens/Login/login_screen.dart';
import 'package:learn_flutter/Screens/Signup/components/background.dart';
import 'package:learn_flutter/Screens/Signup/components/or_divider.dart';
import 'package:learn_flutter/Screens/Signup/components/social_icon.dart';
import 'package:learn_flutter/components/already_have_an_account_check.dart';
import 'package:learn_flutter/components/rounded_button.dart';
import 'package:learn_flutter/components/rounded_input_field.dart';
import 'package:learn_flutter/components/rounded_input_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SignUp".toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.02),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SignUp".toUpperCase(),
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconScr: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconScr: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconScr: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
