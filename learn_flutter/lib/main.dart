import 'package:flutter/material.dart';
import 'package:learn_flutter/bloc/bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  MyBloc bloc = new MyBloc();

  @override
  Widget build(BuildContext context) {
    bloc.counterStream.listen((event) {
      print(event.toString());
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Using stream'),
      ),
      body: StreamBuilder(
          stream: bloc.counterStream,
          builder: (context, snapshot) {
            return Center(
              child: Text(
                snapshot.hasData ? snapshot.data.toString() : '0',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bloc.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     MyBloc bloc = MyBloc();

//     bloc.counterStream.listen((event) {
//       print(event.toString());
//     });

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Using stream'),
//       ),
//       body: StreamBuilder(
//           stream: bloc.counterStream,
//           builder: (context, snapshot) {
//             return Center(
//               child: Text(
//                 snapshot.hasData ? snapshot.data.toString() : '0',
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             );
//           }),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           bloc.increment();
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
