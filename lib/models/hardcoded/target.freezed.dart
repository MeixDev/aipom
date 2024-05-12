// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'target.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Target _$TargetFromJson(Map<String, dynamic> json) {
  return _Target.fromJson(json);
}

/// @nodoc
mixin _$Target {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TargetCopyWith<Target> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetCopyWith<$Res> {
  factory $TargetCopyWith(Target value, $Res Function(Target) then) =
      _$TargetCopyWithImpl<$Res, Target>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$TargetCopyWithImpl<$Res, $Val extends Target>
    implements $TargetCopyWith<$Res> {
  _$TargetCopyWithImpl(this._value, this._then);

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
abstract class _$$TargetImplCopyWith<$Res> implements $TargetCopyWith<$Res> {
  factory _$$TargetImplCopyWith(
          _$TargetImpl value, $Res Function(_$TargetImpl) then) =
      __$$TargetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$TargetImplCopyWithImpl<$Res>
    extends _$TargetCopyWithImpl<$Res, _$TargetImpl>
    implements _$$TargetImplCopyWith<$Res> {
  __$$TargetImplCopyWithImpl(
      _$TargetImpl _value, $Res Function(_$TargetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TargetImpl(
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
class _$TargetImpl implements _Target {
  const _$TargetImpl({required this.id, required this.name});

  factory _$TargetImpl.fromJson(Map<String, dynamic> json) =>
      _$$TargetImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Target(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetImplCopyWith<_$TargetImpl> get copyWith =>
      __$$TargetImplCopyWithImpl<_$TargetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TargetImplToJson(
      this,
    );
  }
}

abstract class _Target implements Target {
  const factory _Target(
      {required final String id, required final String name}) = _$TargetImpl;

  factory _Target.fromJson(Map<String, dynamic> json) = _$TargetImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TargetImplCopyWith<_$TargetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
