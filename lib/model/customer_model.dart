import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class Customers with _$Customers {
  const factory Customers({
    required int errorCode,
    required List<Details> data,
    required String message,
  }) = _Customers;

  factory Customers.fromJson(Map<String, dynamic> json) =>
      _$CustomersFromJson(json);
}

@freezed
class Details with _$Details {
  const factory Details({
    required int id,
    required String name,
    required String? profilePic,
    required String city,
    // required int pincode,
    // required Country country,
    // required State state,
  }) = _Details;

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);
}

// enum Country { ARGENTINA, COUNTRY_INDIA, HSHSHS, INDIA, INDIAN, INIDA }

// final countryValues = EnumValues({
//   "argentina": Country.ARGENTINA,
//   "india": Country.COUNTRY_INDIA,
//   "hshshs": Country.HSHSHS,
//   "India": Country.INDIA,
//   "indian": Country.INDIAN,
//   "Inida": Country.INIDA
// });

// enum State { GOA, HSHDHDH, KERALA, ROSARIO, STATE_2, STATE_KERALA }

// final stateValues = EnumValues({
//   "Goa": State.GOA,
//   "hshdhdh": State.HSHDHDH,
//   "Kerala": State.KERALA,
//   "rosario": State.ROSARIO,
//   "State 2": State.STATE_2,
//   "kerala": State.STATE_KERALA
// });

// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
