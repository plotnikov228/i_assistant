import 'package:i_assistant/domain/entities/calendar_day/calendar_day.dart';

import '../../domain/entities/note/note.dart';

extension NoteListExtension on List<Note> {
  List<Note> sortByDate () {
    final _list = [...this];
    _list.sort((a, b) {
      return b.dateTime.compareTo(a.dateTime);
    });
    return _list;
  }
}