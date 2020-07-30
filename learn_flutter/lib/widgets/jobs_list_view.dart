import 'package:flutter/material.dart';
import 'package:learn_flutter/models/job.dart';
import 'package:learn_flutter/providers/provider.dart';

class JobsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider provider = Provider();

    return FutureBuilder<List<Job>>(
      future: provider.fetchJobs(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Job> data = snapshot.data;
          return _jobsListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  ListView _jobsListView(data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        var item = data[index];
        return ListTile(
          title: Text(
            item.position,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          subtitle: Text(
            item.company,
          ),
          leading: Icon(
            Icons.work,
            color: Colors.blue[500],
          ),
        );
      },
    );
  }
}
