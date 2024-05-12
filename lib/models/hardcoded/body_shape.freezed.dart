// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_shape.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyShape _$BodyShapeFromJson(Map<String, dynamic> json) {
  return _BodyShape.fromJson(json);
}

/// @nodoc
mixin _$BodyShape {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyShapeCopyWith<BodyShape> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyShapeCopyWith<$Res> {
  factory $BodyShapeCopyWith(BodyShape value, $Res Function(BodyShape) then) =
      _$BodyShapeCopyWithImpl<$Res, BodyShape>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$BodyShapeCopyWithImpl<$Res, $Val extends BodyShape>
    implements $BodyShapeCopyWith<$Res> {
  _$BodyShapeCopyWithImpl(this._value, this._then);

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
abstract class _$$BodyShapeImplCopyWith<$Res>
    implements $BodyShapeCopyWith<$Res> {
  factory _$$BodyShapeImplCopyWith(
          _$BodyShapeImpl value, $Res Function(_$BodyShapeImpl) then) =
      __$$BodyShapeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$BodyShapeImplCopyWithImpl<$Res>
    extends _$BodyShapeCopyWithImpl<$Res, _$BodyShapeImpl>
    implements _$$BodyShapeImplCopyWith<$Res> {
  __$$BodyShapeImplCopyWithImpl(
      _$BodyShapeImpl _value, $Res Function(_$BodyShapeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$BodyShapeImpl(
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
class _$BodyShapeImpl implements _BodyShape {
  const _$BodyShapeImpl({required this.id, required this.name});

  factory _$BodyShapeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyShapeImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'BodyShape(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyShapeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyShapeImplCopyWith<_$BodyShapeImpl> get copyWith =>
      __$$BodyShapeImplCopyWithImpl<_$BodyShapeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyShapeImplToJson(
      this,
    );
  }
}

abstract class _BodyShape implements BodyShape {
  const factory _BodyShape(
      {required final String id, required final String name}) = _$BodyShapeImpl;

  factory _BodyShape.fromJson(Map<String, dynamic> json) =
      _$BodyShapeImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$BodyShapeImplCopyWith<_$BodyShapeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
