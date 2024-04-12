// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class CustomersModel with _$CustomersModel {
  const factory CustomersModel({
    required int? id,
    required String? name,
    required String? mobile_number,
    required String? profilePic,
    required String? email,
    required String? street,
    required String? street_two,
    required int? pincode,
    required String? state,
    required String? city,
    required String? country,
  }) = _CustomersModel;

  factory CustomersModel.fromJson(Map<String, dynamic> json) =>
      _$CustomersModelFromJson(json);
}
