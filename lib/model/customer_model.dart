import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class Details with _$Details {
  const factory Details({
    required int id,
    required String name,
    required String? profilePic,
    required String city,
    required String? street,
    required String? country,
    required String? state,
  }) = _Details;

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);
}
