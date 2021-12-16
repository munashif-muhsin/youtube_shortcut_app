import 'package:flutter/material.dart';
import 'package:yt_shortcut/data/data.dart';
import 'package:yt_shortcut/ui/components/video_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (_, int index) {
          return VideoCard(videos[index]);
        },
        itemCount: videos.length,
      ),
    );
  }
}
