// ignore_for_file: camel_case_types

enum AppRoutes {
  note,
  notes,
  tasks,
  day,

  settings,
  calendar,
  notesAndTasks,
  services,
}

extension AppPageExtension on AppRoutes {
  String get toPath {
    switch (this) {
      case AppRoutes.calendar:
        return "/calendar";
      case AppRoutes.notes:
        return "notes";
      case AppRoutes.tasks:
        return "tasks";

      case AppRoutes.settings:
        return "/settings";

      case AppRoutes.services:
        return "/services";
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

      case AppRoutes.settings:
        return "settings";
      case AppRoutes.services:
        return "services";
      case AppRoutes.tasks:
        return "tasks";
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