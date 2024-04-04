// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Customers _$CustomersFromJson(Map<String, dynamic> json) {
  return _Customers.fromJson(json);
}

/// @nodoc
mixin _$Customers {
  int get errorCode => throw _privateConstructorUsedError;
  List<Details> get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomersCopyWith<Customers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersCopyWith<$Res> {
  factory $CustomersCopyWith(Customers value, $Res Function(Customers) then) =
      _$CustomersCopyWithImpl<$Res, Customers>;
  @useResult
  $Res call({int errorCode, List<Details> data, String message});
}

/// @nodoc
class _$CustomersCopyWithImpl<$Res, $Val extends Customers>
    implements $CustomersCopyWith<$Res> {
  _$CustomersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Details>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomersImplCopyWith<$Res>
    implements $CustomersCopyWith<$Res> {
  factory _$$CustomersImplCopyWith(
          _$CustomersImpl value, $Res Function(_$CustomersImpl) then) =
      __$$CustomersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int errorCode, List<Details> data, String message});
}

/// @nodoc
class __$$CustomersImplCopyWithImpl<$Res>
    extends _$CustomersCopyWithImpl<$Res, _$CustomersImpl>
    implements _$$CustomersImplCopyWith<$Res> {
  __$$CustomersImplCopyWithImpl(
      _$CustomersImpl _value, $Res Function(_$CustomersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$CustomersImpl(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Details>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomersImpl implements _Customers {
  const _$CustomersImpl(
      {required this.errorCode,
      required final List<Details> data,
      required this.message})
      : _data = data;

  factory _$CustomersImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomersImplFromJson(json);

  @override
  final int errorCode;
  final List<Details> _data;
  @override
  List<Details> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'Customers(errorCode: $errorCode, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomersImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorCode,
      const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomersImplCopyWith<_$CustomersImpl> get copyWith =>
      __$$CustomersImplCopyWithImpl<_$CustomersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomersImplToJson(
      this,
    );
  }
}

abstract class _Customers implements Customers {
  const factory _Customers(
      {required final int errorCode,
      required final List<Details> data,
      required final String message}) = _$CustomersImpl;

  factory _Customers.fromJson(Map<String, dynamic> json) =
      _$CustomersImpl.fromJson;

  @override
  int get errorCode;
  @override
  List<Details> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CustomersImplCopyWith<_$CustomersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return _Details.fromJson(json);
}

/// @nodoc
mixin _$Details {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get profilePic => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsCopyWith<Details> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) then) =
      _$DetailsCopyWithImpl<$Res, Details>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? profilePic,
      String city,
      String? street,
      String? country,
      String? state});
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res, $Val extends Details>
    implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profilePic = freezed,
    Object? city = null,
    Object? street = freezed,
    Object? country = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsImplCopyWith<$Res> implements $DetailsCopyWith<$Res> {
  factory _$$DetailsImplCopyWith(
          _$DetailsImpl value, $Res Function(_$DetailsImpl) then) =
      __$$DetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? profilePic,
      String city,
      String? street,
      String? country,
      String? state});
}

/// @nodoc
class __$$DetailsImplCopyWithImpl<$Res>
    extends _$DetailsCopyWithImpl<$Res, _$DetailsImpl>
    implements _$$DetailsImplCopyWith<$Res> {
  __$$DetailsImplCopyWithImpl(
      _$DetailsImpl _value, $Res Function(_$DetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profilePic = freezed,
    Object? city = null,
    Object? street = freezed,
    Object? country = freezed,
    Object? state = freezed,
  }) {
    return _then(_$DetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsImpl implements _Details {
  const _$DetailsImpl(
      {required this.id,
      required this.name,
      required this.profilePic,
      required this.city,
      required this.street,
      required this.country,
      required this.state});

  factory _$DetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? profilePic;
  @override
  final String city;
  @override
  final String? street;
  @override
  final String? country;
  @override
  final String? state;

  @override
  String toString() {
    return 'Details(id: $id, name: $name, profilePic: $profilePic, city: $city, street: $street, country: $country, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, profilePic, city, street, country, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsImplCopyWith<_$DetailsImpl> get copyWith =>
      __$$DetailsImplCopyWithImpl<_$DetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsImplToJson(
      this,
    );
  }
}

abstract class _Details implements Details {
  const factory _Details(
      {required final int id,
      required final String name,
      required final String? profilePic,
      required final String city,
      required final String? street,
      required final String? country,
      required final String? state}) = _$DetailsImpl;

  factory _Details.fromJson(Map<String, dynamic> json) = _$DetailsImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get profilePic;
  @override
  String get city;
  @override
  String? get street;
  @override
  String? get country;
  @override
  String? get state;
  @override
  @JsonKey(ignore: true)
  _$$DetailsImplCopyWith<_$DetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
