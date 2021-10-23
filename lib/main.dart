import 'package:flutter/material.dart';
import 'package:newspaper/article_model.dart';

import 'news_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<ArticleModel> articles = [
    ArticleModel('first', '1'),
    ArticleModel('second', '2'),
    ArticleModel('third', '3'),
    ArticleModel('fourth', '4'),
  ];

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewsList(articles),
    );
  }
}
