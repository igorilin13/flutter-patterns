// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseItem _$ResponseItemFromJson(Map<String, dynamic> json) {
  return _ResponseItem.fromJson(json);
}

/// @nodoc
mixin _$ResponseItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseItemCopyWith<ResponseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseItemCopyWith<$Res> {
  factory $ResponseItemCopyWith(
          ResponseItem value, $Res Function(ResponseItem) then) =
      _$ResponseItemCopyWithImpl<$Res, ResponseItem>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ResponseItemCopyWithImpl<$Res, $Val extends ResponseItem>
    implements $ResponseItemCopyWith<$Res> {
  _$ResponseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseItemImplCopyWith<$Res>
    implements $ResponseItemCopyWith<$Res> {
  factory _$$ResponseItemImplCopyWith(
          _$ResponseItemImpl value, $Res Function(_$ResponseItemImpl) then) =
      __$$ResponseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$ResponseItemImplCopyWithImpl<$Res>
    extends _$ResponseItemCopyWithImpl<$Res, _$ResponseItemImpl>
    implements _$$ResponseItemImplCopyWith<$Res> {
  __$$ResponseItemImplCopyWithImpl(
      _$ResponseItemImpl _value, $Res Function(_$ResponseItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ResponseItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseItemImpl implements _ResponseItem {
  _$ResponseItemImpl({required this.id, required this.name});

  factory _$ResponseItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'ResponseItem(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseItemImplCopyWith<_$ResponseItemImpl> get copyWith =>
      __$$ResponseItemImplCopyWithImpl<_$ResponseItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseItemImplToJson(
      this,
    );
  }
}

abstract class _ResponseItem implements ResponseItem {
  factory _ResponseItem(
      {required final String id,
      required final String name}) = _$ResponseItemImpl;

  factory _ResponseItem.fromJson(Map<String, dynamic> json) =
      _$ResponseItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ResponseItemImplCopyWith<_$ResponseItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddItemRequest _$AddItemRequestFromJson(Map<String, dynamic> json) {
  return _AddItemRequest.fromJson(json);
}

/// @nodoc
mixin _$AddItemRequest {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddItemRequestCopyWith<AddItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddItemRequestCopyWith<$Res> {
  factory $AddItemRequestCopyWith(
          AddItemRequest value, $Res Function(AddItemRequest) then) =
      _$AddItemRequestCopyWithImpl<$Res, AddItemRequest>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AddItemRequestCopyWithImpl<$Res, $Val extends AddItemRequest>
    implements $AddItemRequestCopyWith<$Res> {
  _$AddItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddItemRequestImplCopyWith<$Res>
    implements $AddItemRequestCopyWith<$Res> {
  factory _$$AddItemRequestImplCopyWith(_$AddItemRequestImpl value,
          $Res Function(_$AddItemRequestImpl) then) =
      __$$AddItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AddItemRequestImplCopyWithImpl<$Res>
    extends _$AddItemRequestCopyWithImpl<$Res, _$AddItemRequestImpl>
    implements _$$AddItemRequestImplCopyWith<$Res> {
  __$$AddItemRequestImplCopyWithImpl(
      _$AddItemRequestImpl _value, $Res Function(_$AddItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AddItemRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddItemRequestImpl implements _AddItemRequest {
  _$AddItemRequestImpl({required this.name});

  factory _$AddItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddItemRequestImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AddItemRequest(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemRequestImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemRequestImplCopyWith<_$AddItemRequestImpl> get copyWith =>
      __$$AddItemRequestImplCopyWithImpl<_$AddItemRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddItemRequestImplToJson(
      this,
    );
  }
}

abstract class _AddItemRequest implements AddItemRequest {
  factory _AddItemRequest({required final String name}) = _$AddItemRequestImpl;

  factory _AddItemRequest.fromJson(Map<String, dynamic> json) =
      _$AddItemRequestImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$AddItemRequestImplCopyWith<_$AddItemRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
