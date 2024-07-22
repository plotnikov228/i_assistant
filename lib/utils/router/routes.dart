// ignore_for_file: camel_case_types

enum AppRoutes {
  calendar,
  note,
  notes,
  day,
  notesAndTasks,

}

extension AppPageExtension on AppRoutes {
  String get toPath {
    switch (this) {
      case AppRoutes.calendar:
        return "/calendar";
      case AppRoutes.notes:
        return "notes";
      case AppRoutes.notesAndTasks:
        return "/notesAndTasks";
      case AppRoutes.note:
        return "note";
      case AppRoutes.day:
        return "day";
      default:
        return "/";
    }
  }

  String get toName {
    switch (this) {
      case AppRoutes.calendar:
        return "calendar";
      case AppRoutes.note:
        return "note";

      case AppRoutes.notesAndTasks:
        return "notesAndTasks";
      case AppRoutes.notes:
        return "notes";
      case AppRoutes.day:
        return "day";

      default:
        return "calendar";
    }
  }

}