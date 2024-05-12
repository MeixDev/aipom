// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'egg_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EggGroup _$EggGroupFromJson(Map<String, dynamic> json) {
  return _EggGroup.fromJson(json);
}

/// @nodoc
mixin _$EggGroup {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EggGroupCopyWith<EggGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EggGroupCopyWith<$Res> {
  factory $EggGroupCopyWith(EggGroup value, $Res Function(EggGroup) then) =
      _$EggGroupCopyWithImpl<$Res, EggGroup>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$EggGroupCopyWithImpl<$Res, $Val extends EggGroup>
    implements $EggGroupCopyWith<$Res> {
  _$EggGroupCopyWithImpl(this._value, this._then);

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
abstract class _$$EggGroupImplCopyWith<$Res>
    implements $EggGroupCopyWith<$Res> {
  factory _$$EggGroupImplCopyWith(
          _$EggGroupImpl value, $Res Function(_$EggGroupImpl) then) =
      __$$EggGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$EggGroupImplCopyWithImpl<$Res>
    extends _$EggGroupCopyWithImpl<$Res, _$EggGroupImpl>
    implements _$$EggGroupImplCopyWith<$Res> {
  __$$EggGroupImplCopyWithImpl(
      _$EggGroupImpl _value, $Res Function(_$EggGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$EggGroupImpl(
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
class _$EggGroupImpl implements _EggGroup {
  const _$EggGroupImpl({required this.id, required this.name});

  factory _$EggGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$EggGroupImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'EggGroup(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EggGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EggGroupImplCopyWith<_$EggGroupImpl> get copyWith =>
      __$$EggGroupImplCopyWithImpl<_$EggGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EggGroupImplToJson(
      this,
    );
  }
}

abstract class _EggGroup implements EggGroup {
  const factory _EggGroup(
      {required final String id, required final String name}) = _$EggGroupImpl;

  factory _EggGroup.fromJson(Map<String, dynamic> json) =
      _$EggGroupImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$EggGroupImplCopyWith<_$EggGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
