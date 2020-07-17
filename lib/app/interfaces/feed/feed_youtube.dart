import 'package:estudos/app/interfaces/feed/feed_text.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FeedYoutube extends FeedText {
  final String text;
  final String videoId;
  final YoutubePlayerController _controller;

  FeedYoutube({@required this.text, @required this.videoId})
      : _controller = YoutubePlayerController(
            initialVideoId: videoId,
            flags: YoutubePlayerFlags(autoPlay: false));

  @override
  Widget renderContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
        ),
        super.renderContent()
      ],
    );
  }
}
