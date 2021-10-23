import 'package:flutter/material.dart';
import 'package:newspaper/article_model.dart';

import 'news_detail.dart';

class NewsList extends StatelessWidget {
  late List<ArticleModel> _list = [
    ArticleModel('', ''),
  ];

  NewsList(List<ArticleModel> list) {
    this._list = list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Articles'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_list[index].title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return NewsDetail(_list[index]);
                  }),
                );
              },
            );
          },
          itemCount: _list.length,
          separatorBuilder: (BuildContext context, int index) => const Divider()),
    );
  }
}
