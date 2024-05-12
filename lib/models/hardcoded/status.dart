import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';
part 'status.g.dart';

@freezed
class Status with _$Status {
  const factory Status({
    required String id,
    required String name,
    int? iconPosition,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

const defaultStatuses = [
  Status(id: 'NONE', name: 'None'),
  Status(id: 'SLEEP', name: 'Sleep', iconPosition: 0),
  Status(id: 'POISON', name: 'Poison', iconPosition: 1),
  Status(id: 'BURN', name: 'Burn', iconPosition: 2),
  Status(id: 'PARALYSIS', name: 'Paralysis', iconPosition: 3),
  Status(id: 'FROZEN', name: 'Frozen', iconPosition: 4),
];
