// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender_ratio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenderRatio _$GenderRatioFromJson(Map<String, dynamic> json) {
  return _GenderRatio.fromJson(json);
}

/// @nodoc
mixin _$GenderRatio {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderRatioCopyWith<GenderRatio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderRatioCopyWith<$Res> {
  factory $GenderRatioCopyWith(
          GenderRatio value, $Res Function(GenderRatio) then) =
      _$GenderRatioCopyWithImpl<$Res, GenderRatio>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$GenderRatioCopyWithImpl<$Res, $Val extends GenderRatio>
    implements $GenderRatioCopyWith<$Res> {
  _$GenderRatioCopyWithImpl(this._value, this._then);

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
abstract class _$$GenderRatioImplCopyWith<$Res>
    implements $GenderRatioCopyWith<$Res> {
  factory _$$GenderRatioImplCopyWith(
          _$GenderRatioImpl value, $Res Function(_$GenderRatioImpl) then) =
      __$$GenderRatioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$GenderRatioImplCopyWithImpl<$Res>
    extends _$GenderRatioCopyWithImpl<$Res, _$GenderRatioImpl>
    implements _$$GenderRatioImplCopyWith<$Res> {
  __$$GenderRatioImplCopyWithImpl(
      _$GenderRatioImpl _value, $Res Function(_$GenderRatioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GenderRatioImpl(
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
class _$GenderRatioImpl implements _GenderRatio {
  const _$GenderRatioImpl({required this.id, required this.name});

  factory _$GenderRatioImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenderRatioImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenderRatio(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderRatioImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderRatioImplCopyWith<_$GenderRatioImpl> get copyWith =>
      __$$GenderRatioImplCopyWithImpl<_$GenderRatioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenderRatioImplToJson(
      this,
    );
  }
}

abstract class _GenderRatio implements GenderRatio {
  const factory _GenderRatio(
      {required final String id,
      required final String name}) = _$GenderRatioImpl;

  factory _GenderRatio.fromJson(Map<String, dynamic> json) =
      _$GenderRatioImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GenderRatioImplCopyWith<_$GenderRatioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
