part of 'bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.loaded(List<List<Task>> tasks) = _Loaded;
  const factory TasksState.selectTasks(List<List<Task>> tasks, List<int> ids) = _SelectTasks;

}