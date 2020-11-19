// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Student _$StudentFromJson(Map<String, dynamic> json) {
  return Student()
    ..person01 = json['person01'] == null
        ? null
        : Person.fromJson(json['person01'] as Map<String, dynamic>)
    ..name = json['name'] as String
    ..father = json['father'] == null
        ? null
        : User.fromJson(json['father'] as Map<String, dynamic>)
    ..friends = (json['friends'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..keywords = (json['keywords'] as List)?.map((e) => e as String)?.toList()
    ..age = json['age'] as num;
}

Map<String, dynamic> _$StudentToJson(Student instance) => <String, dynamic>{
      'person01': instance.person01,
      'name': instance.name,
      'father': instance.father,
      'friends': instance.friends,
      'keywords': instance.keywords,
      'age': instance.age
    };
