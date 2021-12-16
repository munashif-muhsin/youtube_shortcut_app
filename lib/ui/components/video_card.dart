import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:yt_shortcut/ui/models/video.dart';

class VideoCard extends StatelessWidget {
  final VideoItem video;

  const VideoCard(
    this.video, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch(video.youtubeUrl);
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Image.asset(video.imageUrl),
      ),
    );
  }
}
