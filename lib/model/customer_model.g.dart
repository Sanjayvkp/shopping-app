// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailsImpl _$$DetailsImplFromJson(Map<String, dynamic> json) =>
    _$DetailsImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      profilePic: json['profilePic'] as String?,
      city: json['city'] as String,
      street: json['street'] as String?,
      country: json['country'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$DetailsImplToJson(_$DetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profilePic': instance.profilePic,
      'city': instance.city,
      'street': instance.street,
      'country': instance.country,
      'state': instance.state,
    };
