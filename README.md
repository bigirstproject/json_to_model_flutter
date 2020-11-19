# json_and_model_flutter

A new Flutter plugin.

## Getting Started

1、pub.dev地址：https://pub.dev/packages/json_model
2、github地址：https://github.com/flutterchina/json_model/blob/master/README-ZH.md


使用
在工程根目录下创建一个名为 "jsons" 的目录;
创建或拷贝Json文件到"jsons" 目录中 ;
运行 pub run json_model (Dart VM工程)or flutter packages pub run json_model(Flutter中) 命令生成Dart model类，生成的文件默认在"lib/models"目录下
例子
Json文件: jsons/user.json

{
  "name":"wendux",
  "father":"$user", //可以通过"$"符号引用其它model类
  "friends":"$[]user", // 可以通过"$[]"来引用数组
  "keywords":"$[]String", // 同上
  "age":20
}


生成的Dart model类:

import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
    User();
    
    String name;
    User father;
    List<User> friends;
    List<String> keywords;
    num age;
    
    factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
    Map<String, dynamic> toJson() => _$UserToJson(this);
}
@JsonKey
您也可以使用json_annotation包中的“@JsonKey”标注特定的字段。

这个功能在特定场景下非常有用，比如Json文件中有一个字段名为"+1"，由于在转成Dart类后，字段名会被当做变量名，但是在Dart中变量名不能包含“+”，我们可以通过“@JsonKey”来映射变量名；

{
  "@JsonKey(ignore: true) dynamic":"md",
  "@JsonKey(name: '+1') int": "loved", //将“+1”映射为“loved”
  "name":"wendux",
  "age":20
}
生成文件如下:

import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
    User();
    @JsonKey(name: '+1') int loved;
    String name;
    num age;
    
    factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
    Map<String, dynamic> toJson() => _$UserToJson(this);
}
测试:

import 'models/index.dart';

void main() {
  var u = User.fromJson({"name": "Jack", "age": 16, "+1": 20});
  print(u.loved); // 20
}
关于 @JsonKey标注的详细内容请参考json_annotation 包；

@Import
另外，提供了一个@Import 指令，该指令可以在生成的Dart类中导入指定的文件：

{
  "@import":"test_dir/profile.dart",
  "@JsonKey(ignore: true) Profile":"profile",
  "name":"wendux",
  "age":20
}
生成的Dart类:

import 'package:json_annotation/json_annotation.dart';
import 'test_dir/profile.dart';  // 指令生效
part 'user.g.dart';

@JsonSerializable()
class User {
    User();

    @JsonKey(ignore: true) Profile profile; //file
    String name;
    num age;
    
    factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
    Map<String, dynamic> toJson() => _$UserToJson(this);
}