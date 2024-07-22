import 'package:i_assistant/data/models/task/task.dart';
import 'package:i_assistant/domain/entities/task/task.dart';

class TaskMapper {
  static Task fromModel (TaskModel api) {
    return Task(id: api.id, dateTime:  api.dateTime ?? DateTime.now(), name:  api.name ?? '', comment:  api.comment ?? '', remindDateTime:  api.remindDateTime, selected:  api.selected?? false);
  }
}