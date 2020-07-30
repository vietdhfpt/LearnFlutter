import 'dart:convert';

import '../models/job.dart';
import 'package:http/http.dart' as http;

const jobsListAPIUrl = 'https://mock-json-service.glitch.me/';

class Provider {
  Future<List<Job>> fetchJobs() async {
    final response = await http.get(jobsListAPIUrl);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      print("Reponse: " + jsonResponse.toString());
      return jsonResponse.map((job) => new Job.fromJson(job)).toList();
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }
}
