// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Datas _$DatasFromJson(Map<String, dynamic> json) {
  return _Datas.fromJson(json);
}

/// @nodoc
mixin _$Datas {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatasCopyWith<Datas> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatasCopyWith<$Res> {
  factory $DatasCopyWith(Datas value, $Res Function(Datas) then) =
      _$DatasCopyWithImpl<$Res, Datas>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "price") int price});
}

/// @nodoc
class _$DatasCopyWithImpl<$Res, $Val extends Datas>
    implements $DatasCopyWith<$Res> {
  _$DatasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? price = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatasImplCopyWith<$Res> implements $DatasCopyWith<$Res> {
  factory _$$DatasImplCopyWith(
          _$DatasImpl value, $Res Function(_$DatasImpl) then) =
      __$$DatasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "price") int price});
}

/// @nodoc
class __$$DatasImplCopyWithImpl<$Res>
    extends _$DatasCopyWithImpl<$Res, _$DatasImpl>
    implements _$$DatasImplCopyWith<$Res> {
  __$$DatasImplCopyWithImpl(
      _$DatasImpl _value, $Res Function(_$DatasImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? price = null,
  }) {
    return _then(_$DatasImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatasImpl implements _Datas {
  const _$DatasImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "price") required this.price});

  factory _$DatasImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatasImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "image")
  final String image;
  @override
  @JsonKey(name: "price")
  final int price;

  @override
  String toString() {
    return 'Datas(id: $id, name: $name, image: $image, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatasImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatasImplCopyWith<_$DatasImpl> get copyWith =>
      __$$DatasImplCopyWithImpl<_$DatasImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatasImplToJson(
      this,
    );
  }
}

abstract class _Datas implements Datas {
  const factory _Datas(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "image") required final String image,
      @JsonKey(name: "price") required final int price}) = _$DatasImpl;

  factory _Datas.fromJson(Map<String, dynamic> json) = _$DatasImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(name: "price")
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$DatasImplCopyWith<_$DatasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
