// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(json['name'] as String, json['email'] as String,
      json['age'] as String, json['id'] as String, json['address'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'age': instance.age,
      'id': instance.id,
      'address': instance.address
    };
