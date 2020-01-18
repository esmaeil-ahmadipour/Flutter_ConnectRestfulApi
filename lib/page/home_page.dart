import 'package:flutter/material.dart';
import 'package:flutter_api_future/util/future_builder_list.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  final String apiUrl = 'https://jsonplaceholder.typicode.com/posts?userId=1';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: Container(child: futureBuilderList(apiUrl)),
    );
  }
}