// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EvolutionMethod _$EvolutionMethodFromJson(Map<String, dynamic> json) {
  return _EvolutionMethod.fromJson(json);
}

/// @nodoc
mixin _$EvolutionMethod {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvolutionMethodCopyWith<EvolutionMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolutionMethodCopyWith<$Res> {
  factory $EvolutionMethodCopyWith(
          EvolutionMethod value, $Res Function(EvolutionMethod) then) =
      _$EvolutionMethodCopyWithImpl<$Res, EvolutionMethod>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$EvolutionMethodCopyWithImpl<$Res, $Val extends EvolutionMethod>
    implements $EvolutionMethodCopyWith<$Res> {
  _$EvolutionMethodCopyWithImpl(this._value, this._then);

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
abstract class _$$EvolutionMethodImplCopyWith<$Res>
    implements $EvolutionMethodCopyWith<$Res> {
  factory _$$EvolutionMethodImplCopyWith(_$EvolutionMethodImpl value,
          $Res Function(_$EvolutionMethodImpl) then) =
      __$$EvolutionMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$EvolutionMethodImplCopyWithImpl<$Res>
    extends _$EvolutionMethodCopyWithImpl<$Res, _$EvolutionMethodImpl>
    implements _$$EvolutionMethodImplCopyWith<$Res> {
  __$$EvolutionMethodImplCopyWithImpl(
      _$EvolutionMethodImpl _value, $Res Function(_$EvolutionMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$EvolutionMethodImpl(
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
class _$EvolutionMethodImpl implements _EvolutionMethod {
  const _$EvolutionMethodImpl({required this.id, required this.name});

  factory _$EvolutionMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvolutionMethodImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'EvolutionMethod(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvolutionMethodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvolutionMethodImplCopyWith<_$EvolutionMethodImpl> get copyWith =>
      __$$EvolutionMethodImplCopyWithImpl<_$EvolutionMethodImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvolutionMethodImplToJson(
      this,
    );
  }
}

abstract class _EvolutionMethod implements EvolutionMethod {
  const factory _EvolutionMethod(
      {required final String id,
      required final String name}) = _$EvolutionMethodImpl;

  factory _EvolutionMethod.fromJson(Map<String, dynamic> json) =
      _$EvolutionMethodImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$EvolutionMethodImplCopyWith<_$EvolutionMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
