import 'package:estudos/app/interfaces/feed/components/feed_image_widget.dart';
import 'package:estudos/app/interfaces/feed/feed_text.dart';
import 'package:flutter/material.dart';

class FeedImage extends FeedText {
  final String text;
  final String url;

  FeedImage({@required this.text, @required this.url}) : super(text: text);
  @override
  Widget renderContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FeedImageWidget(
          image: url,
        ),
        super.renderContent()
      ],
    );
  }
}
