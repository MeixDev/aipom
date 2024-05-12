// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Nature _$NatureFromJson(Map<String, dynamic> json) {
  return _Nature.fromJson(json);
}

/// @nodoc
mixin _$Nature {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<NatureStatChange>? get statChanges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NatureCopyWith<Nature> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NatureCopyWith<$Res> {
  factory $NatureCopyWith(Nature value, $Res Function(Nature) then) =
      _$NatureCopyWithImpl<$Res, Nature>;
  @useResult
  $Res call({String id, String name, List<NatureStatChange>? statChanges});
}

/// @nodoc
class _$NatureCopyWithImpl<$Res, $Val extends Nature>
    implements $NatureCopyWith<$Res> {
  _$NatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? statChanges = freezed,
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
      statChanges: freezed == statChanges
          ? _value.statChanges
          : statChanges // ignore: cast_nullable_to_non_nullable
              as List<NatureStatChange>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NatureImplCopyWith<$Res> implements $NatureCopyWith<$Res> {
  factory _$$NatureImplCopyWith(
          _$NatureImpl value, $Res Function(_$NatureImpl) then) =
      __$$NatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<NatureStatChange>? statChanges});
}

/// @nodoc
class __$$NatureImplCopyWithImpl<$Res>
    extends _$NatureCopyWithImpl<$Res, _$NatureImpl>
    implements _$$NatureImplCopyWith<$Res> {
  __$$NatureImplCopyWithImpl(
      _$NatureImpl _value, $Res Function(_$NatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? statChanges = freezed,
  }) {
    return _then(_$NatureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      statChanges: freezed == statChanges
          ? _value._statChanges
          : statChanges // ignore: cast_nullable_to_non_nullable
              as List<NatureStatChange>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NatureImpl implements _Nature {
  const _$NatureImpl(
      {required this.id,
      required this.name,
      final List<NatureStatChange>? statChanges})
      : _statChanges = statChanges;

  factory _$NatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$NatureImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<NatureStatChange>? _statChanges;
  @override
  List<NatureStatChange>? get statChanges {
    final value = _statChanges;
    if (value == null) return null;
    if (_statChanges is EqualUnmodifiableListView) return _statChanges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Nature(id: $id, name: $name, statChanges: $statChanges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NatureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._statChanges, _statChanges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_statChanges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NatureImplCopyWith<_$NatureImpl> get copyWith =>
      __$$NatureImplCopyWithImpl<_$NatureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NatureImplToJson(
      this,
    );
  }
}

abstract class _Nature implements Nature {
  const factory _Nature(
      {required final String id,
      required final String name,
      final List<NatureStatChange>? statChanges}) = _$NatureImpl;

  factory _Nature.fromJson(Map<String, dynamic> json) = _$NatureImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<NatureStatChange>? get statChanges;
  @override
  @JsonKey(ignore: true)
  _$$NatureImplCopyWith<_$NatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NatureStatChange _$NatureStatChangeFromJson(Map<String, dynamic> json) {
  return _NatureStatChange.fromJson(json);
}

/// @nodoc
mixin _$NatureStatChange {
  String get statId => throw _privateConstructorUsedError;
  int get change => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NatureStatChangeCopyWith<NatureStatChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NatureStatChangeCopyWith<$Res> {
  factory $NatureStatChangeCopyWith(
          NatureStatChange value, $Res Function(NatureStatChange) then) =
      _$NatureStatChangeCopyWithImpl<$Res, NatureStatChange>;
  @useResult
  $Res call({String statId, int change});
}

/// @nodoc
class _$NatureStatChangeCopyWithImpl<$Res, $Val extends NatureStatChange>
    implements $NatureStatChangeCopyWith<$Res> {
  _$NatureStatChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statId = null,
    Object? change = null,
  }) {
    return _then(_value.copyWith(
      statId: null == statId
          ? _value.statId
          : statId // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NatureStatChangeImplCopyWith<$Res>
    implements $NatureStatChangeCopyWith<$Res> {
  factory _$$NatureStatChangeImplCopyWith(_$NatureStatChangeImpl value,
          $Res Function(_$NatureStatChangeImpl) then) =
      __$$NatureStatChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String statId, int change});
}

/// @nodoc
class __$$NatureStatChangeImplCopyWithImpl<$Res>
    extends _$NatureStatChangeCopyWithImpl<$Res, _$NatureStatChangeImpl>
    implements _$$NatureStatChangeImplCopyWith<$Res> {
  __$$NatureStatChangeImplCopyWithImpl(_$NatureStatChangeImpl _value,
      $Res Function(_$NatureStatChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statId = null,
    Object? change = null,
  }) {
    return _then(_$NatureStatChangeImpl(
      statId: null == statId
          ? _value.statId
          : statId // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NatureStatChangeImpl implements _NatureStatChange {
  const _$NatureStatChangeImpl({required this.statId, required this.change});

  factory _$NatureStatChangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$NatureStatChangeImplFromJson(json);

  @override
  final String statId;
  @override
  final int change;

  @override
  String toString() {
    return 'NatureStatChange(statId: $statId, change: $change)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NatureStatChangeImpl &&
            (identical(other.statId, statId) || other.statId == statId) &&
            (identical(other.change, change) || other.change == change));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statId, change);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NatureStatChangeImplCopyWith<_$NatureStatChangeImpl> get copyWith =>
      __$$NatureStatChangeImplCopyWithImpl<_$NatureStatChangeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NatureStatChangeImplToJson(
      this,
    );
  }
}

abstract class _NatureStatChange implements NatureStatChange {
  const factory _NatureStatChange(
      {required final String statId,
      required final int change}) = _$NatureStatChangeImpl;

  factory _NatureStatChange.fromJson(Map<String, dynamic> json) =
      _$NatureStatChangeImpl.fromJson;

  @override
  String get statId;
  @override
  int get change;
  @override
  @JsonKey(ignore: true)
  _$$NatureStatChangeImplCopyWith<_$NatureStatChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
