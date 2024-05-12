// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habitat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Habitat _$HabitatFromJson(Map<String, dynamic> json) {
  return _Habitat.fromJson(json);
}

/// @nodoc
mixin _$Habitat {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HabitatCopyWith<Habitat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitatCopyWith<$Res> {
  factory $HabitatCopyWith(Habitat value, $Res Function(Habitat) then) =
      _$HabitatCopyWithImpl<$Res, Habitat>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$HabitatCopyWithImpl<$Res, $Val extends Habitat>
    implements $HabitatCopyWith<$Res> {
  _$HabitatCopyWithImpl(this._value, this._then);

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
abstract class _$$HabitatImplCopyWith<$Res> implements $HabitatCopyWith<$Res> {
  factory _$$HabitatImplCopyWith(
          _$HabitatImpl value, $Res Function(_$HabitatImpl) then) =
      __$$HabitatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$HabitatImplCopyWithImpl<$Res>
    extends _$HabitatCopyWithImpl<$Res, _$HabitatImpl>
    implements _$$HabitatImplCopyWith<$Res> {
  __$$HabitatImplCopyWithImpl(
      _$HabitatImpl _value, $Res Function(_$HabitatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$HabitatImpl(
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
class _$HabitatImpl implements _Habitat {
  const _$HabitatImpl({required this.id, required this.name});

  factory _$HabitatImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitatImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Habitat(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitatImplCopyWith<_$HabitatImpl> get copyWith =>
      __$$HabitatImplCopyWithImpl<_$HabitatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitatImplToJson(
      this,
    );
  }
}

abstract class _Habitat implements Habitat {
  const factory _Habitat(
      {required final String id, required final String name}) = _$HabitatImpl;

  factory _Habitat.fromJson(Map<String, dynamic> json) = _$HabitatImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$HabitatImplCopyWith<_$HabitatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
