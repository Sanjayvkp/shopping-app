// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomersImpl _$$CustomersImplFromJson(Map<String, dynamic> json) =>
    _$CustomersImpl(
      errorCode: json['errorCode'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => Details.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$CustomersImplToJson(_$CustomersImpl instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'data': instance.data,
      'message': instance.message,
    };

_$DetailsImpl _$$DetailsImplFromJson(Map<String, dynamic> json) =>
    _$DetailsImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      profilePic: json['profilePic'] as String?,
      city: json['city'] as String,
    );

Map<String, dynamic> _$$DetailsImplToJson(_$DetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profilePic': instance.profilePic,
      'city': instance.city,
    };
