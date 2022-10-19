import 'package:flutter/material.dart';
import 'package:onplayvid/models/video.dart';
import 'package:onplayvid/services/video_api.dart';
import 'package:onplayvid/utils/constants.dart';
import 'package:onplayvid/utils/helper.dart';

import '../widgets/videos_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedFilter = VideoSort.id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            onSelected: _onChangeFilter,
            offset: const Offset(0, 50),
            icon: const Icon(Icons.sort),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: VideoSort.id,
                child: Text('Par défaut'),
              ),
              const PopupMenuItem(
                value: VideoSort.name,
                child: Text('Par nom'),
              ),
              const PopupMenuItem(
                value: VideoSort.duration,
                child: Text('Par durée'),
              ),
            ],
          )
        ],
        title: const Text("Orange Valley CAA"),
        backgroundColor: Colors.black,
      ),
      body: Container(
          color: backgroundColor,
          child: FutureBuilder(
            future: getVideoFromApi(filter: _selectedFilter),
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

  void _onChangeFilter(VideoSort choice) {
    if (choice != _selectedFilter) {
      setState(() {
        _selectedFilter = choice;
      });
    }
  }
}
