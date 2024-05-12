import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_color.freezed.dart';
part 'body_color.g.dart';

@freezed
class BodyColor with _$BodyColor {
  const factory BodyColor({
    required String id,
    required String name,
  }) = _BodyColor;

  factory BodyColor.fromJson(Map<String, dynamic> json) =>
      _$BodyColorFromJson(json);
}

const defaultBodyColors = [
  BodyColor(id: 'Red', name: 'Red'),
  BodyColor(id: 'Blue', name: 'Blue'),
  BodyColor(id: 'Yellow', name: 'Yellow'),
  BodyColor(id: 'Green', name: 'Green'),
  BodyColor(id: 'Black', name: 'Black'),
  BodyColor(id: 'Brown', name: 'Brown'),
  BodyColor(id: 'Purple', name: 'Purple'),
  BodyColor(id: 'Gray', name: 'Gray'),
  BodyColor(id: 'White', name: 'White'),
  BodyColor(id: 'Pink', name: 'Pink'),
];
