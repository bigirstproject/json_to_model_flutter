///使用指导文档，https://www.jianshu.com/p/84a0b551e3eb,
///cd到根目录下，运行命令：flutter packages pub run build_runner build

import 'package:json_annotation/json_annotation.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'user.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class User {
  String name;
  String email;
  String age;
  String id;
  String address;

  //不同的类使用不同的mixin即可
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  User(this.name, this.email, this.age, this.id, this.address);

  @override
  String toString() {
    return 'User{name: $name, email: $email, age: $age, id: $id, address: $address}';
  }
}
