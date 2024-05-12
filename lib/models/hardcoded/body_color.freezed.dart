// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyColor _$BodyColorFromJson(Map<String, dynamic> json) {
  return _BodyColor.fromJson(json);
}

/// @nodoc
mixin _$BodyColor {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyColorCopyWith<BodyColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyColorCopyWith<$Res> {
  factory $BodyColorCopyWith(BodyColor value, $Res Function(BodyColor) then) =
      _$BodyColorCopyWithImpl<$Res, BodyColor>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$BodyColorCopyWithImpl<$Res, $Val extends BodyColor>
    implements $BodyColorCopyWith<$Res> {
  _$BodyColorCopyWithImpl(this._value, this._then);

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
abstract class _$$BodyColorImplCopyWith<$Res>
    implements $BodyColorCopyWith<$Res> {
  factory _$$BodyColorImplCopyWith(
          _$BodyColorImpl value, $Res Function(_$BodyColorImpl) then) =
      __$$BodyColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$BodyColorImplCopyWithImpl<$Res>
    extends _$BodyColorCopyWithImpl<$Res, _$BodyColorImpl>
    implements _$$BodyColorImplCopyWith<$Res> {
  __$$BodyColorImplCopyWithImpl(
      _$BodyColorImpl _value, $Res Function(_$BodyColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$BodyColorImpl(
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
class _$BodyColorImpl implements _BodyColor {
  const _$BodyColorImpl({required this.id, required this.name});

  factory _$BodyColorImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyColorImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'BodyColor(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyColorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyColorImplCopyWith<_$BodyColorImpl> get copyWith =>
      __$$BodyColorImplCopyWithImpl<_$BodyColorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyColorImplToJson(
      this,
    );
  }
}

abstract class _BodyColor implements BodyColor {
  const factory _BodyColor(
      {required final String id, required final String name}) = _$BodyColorImpl;

  factory _BodyColor.fromJson(Map<String, dynamic> json) =
      _$BodyColorImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$BodyColorImplCopyWith<_$BodyColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
