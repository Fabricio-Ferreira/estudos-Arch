import 'package:flutter/material.dart';

class FeedImageWidget extends StatelessWidget {
  final String image;

  const FeedImageWidget({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
