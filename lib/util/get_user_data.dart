import 'dart:async';
import 'dart:convert';
import 'package:flutter_api_future/model/user_model.dart';
import 'package:http/http.dart' as http;

Future<List<User>> getUserData(apiUrl) async {

  var data = await http.get(apiUrl);
  var jsonData = json.decode(data.body);

  List<User> users = new List<User>();
  for (var userProperty in jsonData) {
    User user = User(
      userProperty["userId"],
      userProperty["id"],
      userProperty["title"],
      userProperty["body"],
    );
    users.add(user);
  }
  return users;
}
