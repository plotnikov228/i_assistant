import 'package:freezed_annotation/freezed_annotation.dart';


part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required final int id,
    required final DateTime dateTime,
    required final String name,
    required final String comment,
    required final DateTime? remindDateTime,
    required final bool selected

  }) = _Task;

  const Task._();

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
}