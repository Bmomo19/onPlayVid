import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;
import 'package:onplayvid/models/video.dart';

Future<List<Video>> getVideoFromApi() async {
  final url = Uri.http("orangevalleycaa.org", "/api/videos");
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var json = response.body;
    return videoFromJson(json);
  } else {
    return [];
  }
}
