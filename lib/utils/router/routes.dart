// ignore_for_file: camel_case_types

enum AppRoutes {
  calendar,
  note
}

extension AppPageExtension on AppRoutes {
  String get toPath {
    switch (this) {
      case AppRoutes.calendar:
        return "/calendar";
      case AppRoutes.note:
        return "note";

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

      default:
        return "calendar";
    }
  }

}