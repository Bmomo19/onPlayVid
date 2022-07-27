import 'package:flutter/material.dart';
import 'package:onplayvid/models/video.dart';
import 'package:onplayvid/utils/constants.dart';

class DetailsPage extends StatelessWidget {
  final Video video;
  const DetailsPage({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(video.name),
      ),
      body: Container(
        color: backgroundColor,
        height: double.infinity,
        child: _VideoDetail(
          video: video,
        ),
      ),
    );
  }
}

class _VideoDetail extends StatelessWidget {
  final Video video;
  const _VideoDetail({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _DetailsPoster(posteUrl: video.thumbnail),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _getDescription(),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _DetailsKeywords(
            keywords: video.keywords,
          ),
        ),
      ],
    );
  }

  Widget _getDescription() => Text(
        video.description,
        style: const TextStyle(
          fontSize: 22,
          color: Colors.white,
          fontFamily: 'Nunito',
          fontStyle: FontStyle.italic,
        ),
      );
}

class _DetailsPoster extends StatelessWidget {
  final String posteUrl;
  const _DetailsPoster({Key? key, required this.posteUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: posteUrl,
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: Image.network(
          posteUrl,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class _DetailsKeywords extends StatelessWidget {
  final String keywords;
  const _DetailsKeywords({Key? key, required this.keywords}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [
          for (var genre in keywords.split(','))
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Chip(label: Text(genre)),
            )
        ],
      ),
    );
  }
}
