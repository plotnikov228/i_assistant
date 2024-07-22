import 'package:i_assistant/domain/entities/task/task.dart';

import '../../data/database/hive_database.dart';


abstract class TasksRepository {
  final HiveDBTag hiveDBTag;

  TasksRepository({required this.hiveDBTag});


  Future<List<Task>> getAllTasks ();
  Future<List<Task>> setTasks (List<Task> tasks);
  Future<List<Task>> removeTasks (List<int> taskIds);
  Future<List<Task>> removeAllTasks ();
  Future<List<Task>> getTasksByDate (DateTime dateTime);


}