import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqlite_api.dart';

class DBHelper {
  static Future<Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(dbPath, 'test.db'),
        onCreate: (db, version) {
      return db.execute(
          'CREATE TABLE news(id TEXT PRIMARY KEY, type INTEGER, title TEXT, img TEXT, news_date TEXT, news_date_uts TEXT, annotation TEXT, mobile_url TEXT)');
    }, version: 2);
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await DBHelper.database();
    return db.query(table);
  }
}
