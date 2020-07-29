import 'package:flutter/material.dart';
import 'package:learn_flutter/components/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _counter = 100;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _minusCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Vui lòng chọn số lượng:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildButton(
                  icon: Icons.remove,
                  press: () {
                    _minusCounter();
                  },
                ),
                Container(
                  alignment: Alignment.center,
                  width: 80,
                  child: Text(
                    "$_counter",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                buildButton(
                  icon: Icons.add,
                  press: () {
                    _incrementCounter();
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildButton({IconData icon, Function press}) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 40,
        height: 40,
        child: Icon(
          icon,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
          color: kBaseColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
