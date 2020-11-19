import 'package:json_annotation/json_annotation.dart';
import "person.dart";
import "user.dart";
part 'student.g.dart';

@JsonSerializable()
class Student {
    Student();

    @JsonKey(ignore: true) Person person;
    Person person01;
    String name;
    User father;
    List<User> friends;
    List<String> keywords;
    num age;
    
    factory Student.fromJson(Map<String,dynamic> json) => _$StudentFromJson(json);
    Map<String, dynamic> toJson() => _$StudentToJson(this);
}
