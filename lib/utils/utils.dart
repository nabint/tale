

import 'package:shared_preferences/shared_preferences.dart';

import '../features/talepreview/models/TalePreview.dart';

int currentTimeInSeconds() {
    var ms = (DateTime.now()).millisecondsSinceEpoch;
    return (ms / 1000).round();
}

List<TalePreview> sortTalePreviews(List<TalePreview> talePreviews) {
    talePreviews.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    return talePreviews;
}

Future<void> updateBooksState(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, true);
    await prefs.setInt('t${key}', currentTimeInSeconds());
}