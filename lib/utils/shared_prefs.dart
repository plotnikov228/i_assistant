import 'package:shared_preferences/shared_preferences.dart';

enum DataType { string, bool, int }

class SharedPrefs {
  static late SharedPreferences sharedPreferences;

  /// Универсальный метод сета в SharedPreferences
  ///
  /// [title] - куда сеттим
  ///
  /// [data] - что сеттим
  ///
  /// [type] - тип данных, если надо можно и другие добавить
  static Future<void> setData({
    required String title,
    required var data,
    required DataType type,
  }) async {
    if (data == null) {
      sharedPreferences.remove(title);
      return;
    }
    switch (type) {
      case DataType.string:
        await sharedPreferences.setString(title, data);
        break;
      case DataType.bool:
        await sharedPreferences.setBool(title, data);
        break;
      case DataType.int:
        await sharedPreferences.setInt(title, data);
        break;
      default:
        break;
    }
  }

  static getData({
    required String title,
    required DataType type,
  }) {
    switch (type) {
      case DataType.string:
        return sharedPreferences.getString(title);
      case DataType.bool:
        return sharedPreferences.getBool(title);
      case DataType.int:
        return sharedPreferences.getInt(title);
      default:
    }
  }

  /// Ключ для theme
  static bool get isThemeDark => sharedPreferences.getBool(SharedPrefsNames.themeDark) ?? false;

  static set setThemeDark(bool? value) =>sharedPreferences.setBool(SharedPrefsNames.themeDark, value ?? false);


  /// Ключ для autoTheme
  static bool get isAutoTheme => sharedPreferences.getBool(SharedPrefsNames.autoTheme) ?? false;

  static set setAutoTheme(bool? value) =>sharedPreferences.setBool(SharedPrefsNames.autoTheme, value ?? false);


  /// Ключ для сервера
  static bool? get isProdApi => sharedPreferences.getBool(SharedPrefsNames.isProdApi) ?? true;

  static set setApiState(bool? value) =>sharedPreferences.setBool(SharedPrefsNames.isProdApi, value ?? true);


  /// Ключ для токена
  static Future<String?> get token async => getData(title: SharedPrefsNames.token, type: DataType.string);

  static set setToken(String? value) => setData(
    title: SharedPrefsNames.token,
    data: value,
    type: DataType.string,
  );

  /// Ключ для темы
  static bool? get themeDark => sharedPreferences.getBool(SharedPrefsNames.themeDark);

  static set setTheme(bool value) => setData(
    title: SharedPrefsNames.themeDark,
    data: value,
    type: DataType.bool,
  );

  /// Ключ для последней версии
  static bool get showWelcome => sharedPreferences.getBool(SharedPrefsNames.showWelcome) ?? true;

  static set setShowWelcome(bool value) => setData(
    title: SharedPrefsNames.showWelcome,
    data: value,
    type: DataType.bool,
  );
}

class SharedPrefsNames {
  static String token = 'token';
  static String showWelcome = 'showWelcome';

  static String themeDark = 'themeDark';
  static String autoTheme = 'autoTheme';

  static String isProdApi = 'isProdApi';
  static String currentBuildNumber = 'currentBuildNumber'; //последняя версия приложения
}