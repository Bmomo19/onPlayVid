import 'package:flutter/material.dart';
import 'package:onplayvid/models/video.dart';

class VideosGrid extends StatelessWidget {
  final List<Video> videos;

  const VideosGrid({Key? key, required this.videos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        for (var video in videos)
          _VideoTile(imageUrl: video.thumbnail, title: video.name)
      ],
    );
  }
}

class _VideoTile extends StatelessWidget {
  const _VideoTile({required this.imageUrl, required this.title});
  final String imageUrl, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.black.withOpacity(0.6),
            height: 35,
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
