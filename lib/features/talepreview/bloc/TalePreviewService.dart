import 'package:mongo_dart/mongo_dart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talepreview/constants.dart';
import 'package:talepreview/features/talepreview/models/TalePreview.dart';
import 'package:dio/dio.dart';

final dio = Dio();


class TalePreviewService extends ReadApiService<String, TalePreview> {
  @override
  Future<List<TalePreview>> getAll() async {
    final result = await dio.get(API_ENDPOINT, options: Options(headers:{"Authorization":"Bearer $TOKEN"},));
    final List<dynamic> talePreviews = result.data as List;
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    List<TalePreview> talepreviews = [];
    for (var i = 0; i < talePreviews.length; i++) {
      var talemap = TalePreview.fromMap(talePreviews[i] as Map<String, dynamic>);
      // var db = Db("mongodb://192.168.1.70:27017/tale-items");
      // await db.open();

      // final tale_collection = db.collection('tale_collection');
      // await tale_collection.insert(talemap.toMap());

      bool? counter =  prefs.getBool(talemap.id.toString());
      int? timestamp = prefs.getInt('t${talemap.id}');

      if (counter != null){
        talemap.counter = 1;
      }
      if (timestamp != null){
        talemap.timestamp = timestamp;
      }
      talepreviews.add(talemap);
    }

    return talepreviews;
  }

  @override
  Future<TalePreview> get(String id) async {
    throw UnimplementedError();
  }
}

abstract class ReadApiService<K, V> {
  Future<List<V>> getAll();
  Future<V> get(K id);
}
