import 'package:flutter/material.dart';
class BottomSheetHandler {

  static Future<T?> showBottomSheet<T>(BuildContext context,
      {required Widget child, bool useRootNavigator = false}) {

    return showModalBottomSheet<T>(
        context: context,
        useSafeArea: true,
        useRootNavigator: useRootNavigator,
        isScrollControlled: true,
        //barrierColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        builder: (_context) =>
            child);
  }
}