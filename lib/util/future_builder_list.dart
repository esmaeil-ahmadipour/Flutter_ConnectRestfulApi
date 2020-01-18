import 'package:flutter/material.dart';
import 'package:flutter_api_future/util/get_user_data.dart';

Widget futureBuilderList(apiUrl) {
  return FutureBuilder(
    future: getUserData(apiUrl),
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      if (snapshot.data == null) {
        return Container(
          child: Center(
            child: Text("Loading ..."),
          ),
        );
      } else {
        return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(snapshot.data[index].id.toString()),
              );
            });
      }//else
    },
  );
}
