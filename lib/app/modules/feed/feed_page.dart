import 'package:estudos/app/interfaces/feed/feed_image.dart';
import 'package:estudos/app/interfaces/feed/feed_text.dart';
import 'package:estudos/app/interfaces/feed/feed_youtube.dart';
import 'package:estudos/app/interfaces/feed_interface.dart';

import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  final String title;
  const FeedPage({Key key, this.title = "Feed de Notícias"}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<IFeed> feed = [];

  @override
  void initState() {
    super.initState();
    feed.add(FeedText(text: 'Enviando o primeiro feed'));
    feed.add(FeedImage(
        text: 'Enviando feed de imagem',
        url: 'https://www.rbsdirect.com.br/imagesrc/25413947.jpg?w=700'));
    feed.add(FeedYoutube(text: 'Video do YoutuBe', videoId: 'ra_Gavz2cXo'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.separated(
          itemBuilder: (_, int index) => feed[index].render(),
          separatorBuilder: (_, int index) => SizedBox(height: 10),
          itemCount: feed.length,
        ));
  }
}
