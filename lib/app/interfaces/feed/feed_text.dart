import 'package:estudos/app/interfaces/feed_interface.dart';
import 'package:estudos/app/shared/styles/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FeedText implements IFeed {
  final String text;
  final DateTime date;

  FeedText({@required this.text}) : date = DateTime.now();

  @override
  Widget render() {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: renderContent(),
    );
  }

  @override
  Widget renderContent() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            style: CustomTextStyles.smallTextColorBaseBold12,
            softWrap: true,
          ),
          renderBottom()
        ],
      ),
    );
  }

  @override
  Widget renderBottom() {
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text('Enviado em: ${DateFormat('dd/mm/yyyy').format(date)}'),
        )
      ],
    );
  }
}
