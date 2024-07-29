part of 'bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {

  const factory TasksEvent.fetch() = _Fetch;

  const factory TasksEvent.create({
    required Task task
}) = _Create;

  const factory TasksEvent.selectTasksMode({bool? mode}) = _SelectTasksMode;

  const factory TasksEvent.selectTask({required int id}) = _SelectTask;


  const factory TasksEvent.removeSelectedTasks([List<int>? ids]) = _RemoveSelectedTasks;

  const factory TasksEvent.removeAllTasks() = _RemoveAllTasks;

}