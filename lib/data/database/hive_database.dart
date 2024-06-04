import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path;


class HiveDatabase {
  static Directory? _dir;
  static String? _pathDataForTransfer;

  static Future initDB() async {
    if (_dir == null || _pathDataForTransfer == null) {
      _dir = await path.getApplicationDocumentsDirectory();
      _pathDataForTransfer = '${_dir!.path}/dataForTransfer.json';

    Hive.init(_dir!.path);
    }
  }

  HiveDatabase() {
    HiveDatabase.initDB();
  }

  static Future<File> setHiveDBInFile() async {
    String dataForTransfer = '';
    for (int i = 0; i < HiveDBTags.allTagsForTransfer.length; i++) {
      final item = HiveDBTags.allTagsForTransfer[i];
      final boxData = await getBox(item);
      var listToReturn = boxData.map((e) => jsonDecode(e).toString()).toList();
      if (listToReturn.isNotEmpty) {
        String _endPoint = ',';
        if(i == HiveDBTags.allTagsForTransfer.length - 1) _endPoint = '';
        dataForTransfer += ('\"$item\":' + '[' + boxData.join(',').toString() + ']$_endPoint');
      }
    }
    dataForTransfer = '{$dataForTransfer}';
    print(dataForTransfer);
    return await _createFileToTransfer(dataForTransfer);
  }

  static Future<File> _createFileToTransfer(String content) async {
    final file = File(_pathDataForTransfer!);
    await file.writeAsString(content).then((value) async => await file.create(recursive: true));

    return file;
  }

  static Future getHiveDBFromFile(String path) async {
    try {
      final file = File(path);
      Map<String, dynamic> data = jsonDecode(await file.readAsString());
      for (var item in HiveDBTags.allTagsForTransfer) {
        await openBox(item);
        List<dynamic>? maps = data[item];
        await deleteBox(item);
        if (maps != null)
          for (final e in maps) {
            await setBox(e, item);
          }
      }
    } catch (_) {
      throw(_);
    }
  }

  static Future deleteBox(HiveDBTag section) async {
    await Hive.box(section.tag).clear();
  }

  static Future openBox(HiveDBTag section) async {
    await Hive.openBox(section.tag);
  }

  static Future<List> getBox(HiveDBTag section) async {
    await openBox(section);
    List<dynamic> list = [];
    for (int i = 0; i < Hive.box(section.tag).length; i++) {
      final item = Hive.box(section.tag).getAt(i);
      if(item != null)
        list.add(Hive.box(section.tag).getAt(i));
    }
    return list;
  }

  // in cycle
  static Future setBox(dynamic value, HiveDBTag section) async {
    await openBox(section);
    Hive.box(section.tag).add(jsonEncode(value));
  }
}

class HiveDBTags {
  static const allTagsForTransfer = [
    calendarDays,
  ];
  static const calendarDays = HiveDBTag('calendar_days');
}

class HiveDBTag {
  final String tag;

  const HiveDBTag( this.tag);

}