import 'dart:convert';
import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:i_assistant/data/data_sources/mappers/task_mapper.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';
import 'package:i_assistant/utils/extensions/tasks_extension.dart';
import 'package:timezone/standalone.dart';
import 'package:timezone/timezone.dart';

import '../../../domain/entities/task/task.dart';
import '../../database/hive_database.dart';
import '../../models/task/task.dart';

abstract class TasksLocalDataSource {
  final HiveDBTag hiveDBTag;

  TasksLocalDataSource({required this.hiveDBTag});

  Future<List<Task>> getAllTasks ([HiveDBTag? hiveDBTag]);
  Future<List<Task>> setTasks (List<Task> Tasks);
  Future<List<Task>> removeTasks (List<int> taskIds);
  Future<List<Task>> removeAllTasks ();
  Future<List<Task>> getTasksByDate (DateTime dateTime);


}

class TasksLocalDataSourceImpl extends TasksLocalDataSource {

  TasksLocalDataSourceImpl({required super.hiveDBTag});
  @override
  Future<List<Task>> getAllTasks([HiveDBTag? hiveDBTag]) async {
    await HiveDatabase.initDB();
    await HiveDatabase.openBox(hiveDBTag ?? this.hiveDBTag);
    final list = (await HiveDatabase.getBox(hiveDBTag ?? this.hiveDBTag));
    return (list
        .map((e) => TaskMapper.fromModel(TaskModel.fromJson(jsonDecode(e))))
        .toList()).sortByDate();
  }

  @override
  Future<List<Task>> getTasksByDate(DateTime dateTime) async{
    await HiveDatabase.openBox(hiveDBTag);
    final list = (await HiveDatabase.getBox(hiveDBTag)).map((e) => TaskMapper.fromModel(TaskModel.fromJson(jsonDecode(e)))).toList();
    print(list.length);
    return (list.where((element) => element.dateTime.equalDate(dateTime))
    .toList());
  }

  @override
  Future<List<Task>> removeAllTasks() async {
    await HiveDatabase.deleteBox(hiveDBTag);
    return [];
  }

  @override
  Future<List<Task>> removeTasks(List<int> taskIds)async {
    final __fullList = [...await getAllTasks()]..removeWhere((element) => taskIds.contains(element.id));
    await HiveDatabase.deleteBox(hiveDBTag);
    await HiveDatabase.openBox(hiveDBTag);
    for(var item in __fullList) {
      await HiveDatabase.setBox(
          item.toJson(), hiveDBTag);
    }
    return __fullList;
  }

  @override
  Future<List<Task>> setTasks(List<Task> Tasks) async {
    final _sortedListForChanges = Tasks.sortByDate();
    final __fullList = [...await getAllTasks()];
    final _fullList = List.generate(__fullList.length, (index) => () {

      final val =  __fullList[index].copyWith(id: index);
      return val;
    }());
    for (var note in _sortedListForChanges) {

      int index = _fullList.indexWhere((obj1) => obj1.id == note.id);
      if (index != -1) {
        _fullList[index] = note;
      } else {
        _fullList.add(note.copyWith(id: _fullList.length));
      }
    }
    await HiveDatabase.deleteBox(hiveDBTag);
    await HiveDatabase.openBox(hiveDBTag);
    for(var item in _fullList) {
      await HiveDatabase.setBox(
          item.toJson(), hiveDBTag);
    }
    await _setNotify ();
    return _fullList;
  }


  _setNotify () async {


    final birthdays = (await getAllTasks(HiveDBTags.birthdays)).where((element) => element.remindDateTime!=null && !element.selected).toList();
    final tasks = (await getAllTasks(HiveDBTags.tasks)).where((element) => element.remindDateTime!=null && !element.selected).toList();


    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/launcher_icon');
    final DarwinInitializationSettings initializationSettingsDarwin =
    DarwinInitializationSettings();

    final InitializationSettings initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsDarwin,);
    final plugin = FlutterLocalNotificationsPlugin();
    if(Platform.isIOS)
      await plugin.resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin>()?.requestPermissions();

    else {
      await plugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
      await plugin
          .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
          ?.requestExactAlarmsPermission();
    }
    await plugin.initialize(initializationSettings,);
    await plugin.cancelAll();
    setLocalLocation(UTC);
    for(int i = 0; i < tasks.length; i++) {
      try {
        await plugin.zonedSchedule(
            i, 'Я|Ассистент', 'Задача - ${tasks[i].name}', TZDateTime.from(
            tasks[i].dateTime.copyWith(hour: tasks[i].remindDateTime!.hour,
                minute: tasks[i].remindDateTime!.minute), local),
            NotificationDetails(
                android: AndroidNotificationDetails(
                  importance: Importance.max,
                  priority: Priority.max,
                    'notifications_id', 'notifications'),
                iOS: DarwinNotificationDetails(
                  presentAlert: true
                )
            ),
            uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation
                .absoluteTime,
            androidScheduleMode: AndroidScheduleMode.alarmClock
        );
      } catch (_) {

      }

    }

    for(int i = 0; i < birthdays.length; i++) {
      try {
        await plugin.zonedSchedule(i + tasks.length, 'Я|Ассистент',
            'День рождения - ${birthdays[i].name}', TZDateTime.from(
                birthdays[i].dateTime.copyWith(
                    hour: birthdays[i].remindDateTime!.hour,
                    minute: birthdays[i].remindDateTime!.minute), local),
            NotificationDetails(
                android: AndroidNotificationDetails(
                    'notifications_id', 'notifications'),
                iOS: DarwinNotificationDetails()
            ),
            uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation
                .absoluteTime,
            androidScheduleMode: AndroidScheduleMode.alarmClock

        );
      } catch (_) {

      }
    }




  }

}