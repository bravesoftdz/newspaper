import 'package:flutter/material.dart';

import 'article_model.dart';

class NewsDetail extends StatelessWidget {
  late ArticleModel _model;

  NewsDetail(ArticleModel model) {
    _model = model;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details',
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_model.title),
            SizedBox(
              height: 10,
            ),
            Text(_model.detail),
          ],
        ),
      ),
    );
  }
}
