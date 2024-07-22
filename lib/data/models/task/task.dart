import 'package:freezed_annotation/freezed_annotation.dart';


part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required final int id,
    required final DateTime? dateTime,
    required final String? name,
    required final String? comment,
    required final DateTime? remindDateTime,
    required final bool? selected

  }) = _TaskModel;

  const TaskModel._();

  factory TaskModel.fromJson(Map<String, Object?> json) => _$TaskModelFromJson(json);
}