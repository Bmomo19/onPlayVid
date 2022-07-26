import 'package:flutter/material.dart';
import 'package:onplayvid/models/video.dart';
import 'package:onplayvid/services/video_api.dart';
import 'package:onplayvid/utils/constants.dart';

import '../widgets/videos_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orange Valley CAA"),
        backgroundColor: Colors.black,
      ),
      body: Container(
          color: backgroundColor,
          child: FutureBuilder(
            future: getVideoFromApi(),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else {
                return VideosGrid(videos: snapshot.data as List<Video>);
              }
            }),
          )
          // VideosGrid(videos: getFakeVideos()),
          ),
    );
  }
}
