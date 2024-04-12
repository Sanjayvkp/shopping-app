// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomersModelImpl _$$CustomersModelImplFromJson(Map<String, dynamic> json) =>
    _$CustomersModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      mobile_number: json['mobile_number'] as String?,
      profilePic: json['profilePic'] as String?,
      email: json['email'] as String?,
      street: json['street'] as String?,
      street_two: json['street_two'] as String?,
      pincode: json['pincode'] as int?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$CustomersModelImplToJson(
        _$CustomersModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile_number': instance.mobile_number,
      'profilePic': instance.profilePic,
      'email': instance.email,
      'street': instance.street,
      'street_two': instance.street_two,
      'pincode': instance.pincode,
      'state': instance.state,
      'city': instance.city,
      'country': instance.country,
    };
