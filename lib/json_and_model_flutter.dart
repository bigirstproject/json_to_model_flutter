import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:json_and_model_flutter/model/user.dart';

class JsonAndModelFlutter {
  static const MethodChannel _channel =
      const MethodChannel('json_and_model_flutter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static User userJsonData() {
    String jsonStr = '{"name":"Jack","email":"001","age":"23"}';
    Map map = json.decode(jsonStr);
    var user = User.fromJson(map);
    return user;
  }

  static Map<String, dynamic> usertoString(User user) {
    var map = User("Jack", "email", "25","23","342").toJson();
    return map;
  }

}
