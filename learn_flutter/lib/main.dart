import 'package:flutter/material.dart';
import 'package:learn_flutter/providers/provider.dart';
import 'package:learn_flutter/widgets/jobs_list_view.dart';

import 'models/job.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("REST Flutter"),
        ),
        body: Center(
          child: HomeScreen(),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Provider provider = Provider();

    return FutureBuilder(
      future: provider.fetchJobs(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Job> jobs = snapshot.data;
          return ListView.builder(
            itemCount: jobs.length,
            itemBuilder: (context, index) {
              var job = jobs[index];
              return ListTile(
                title: Text(job.position),
                subtitle: Text(job.company),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text(
            "${snapshot.error}",
            textAlign: TextAlign.center,
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
