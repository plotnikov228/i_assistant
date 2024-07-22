import 'package:i_assistant/data/data_sources/local_data_sources/task_local_data_source.dart';
import 'package:i_assistant/data/data_sources/local_data_sources/notes_local_data_source.dart';
import 'package:i_assistant/domain/entities/task/task.dart';
import 'package:i_assistant/domain/repositories/birthday_repository.dart';

class TasksRepositoryImpl extends TasksRepository {
  late final TasksLocalDataSource _dataSource =
  TasksLocalDataSourceImpl(hiveDBTag: hiveDBTag);

  TasksRepositoryImpl({required super.hiveDBTag});

  @override
  Future<List<Task>> getAllTasks() {
    return _dataSource.getAllTasks();
  }

  @override
  Future<List<Task>> getTasksByDate(DateTime dateTime) {
    return _dataSource.getTasksByDate(dateTime);
  }

  @override
  Future<List<Task>> removeAllTasks() {
    return _dataSource.removeAllTasks();
  }

  @override
  Future<List<Task>> removeTasks(List<int> taskIds) {
    return _dataSource.removeTasks(taskIds);
  }

  @override
  Future<List<Task>> setTasks(List<Task> tasks) {
    return _dataSource.setTasks(tasks);
  }
}
