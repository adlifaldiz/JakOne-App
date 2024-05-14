import 'package:flutter/foundation.dart';

void printDebug(Object object) {
  assert(() {
    if (kDebugMode) {
      print(object);
      return true;
    }
    return false;
  }());
}

void printWrapped(String text) {
  assert(() {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) {
      if (kDebugMode) {
        print(match.group(0));
      }
    });
    return true;
  }());
}
