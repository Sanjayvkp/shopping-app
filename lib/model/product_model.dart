// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Datas with _$Datas {
  const factory Datas({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "price") required int price,
  }) = _Datas;

  factory Datas.fromJson(Map<String, dynamic> json) => _$DatasFromJson(json);
}
