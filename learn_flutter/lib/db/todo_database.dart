import 'package:learn_flutter/db/todo_table.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TodoDatabase {
  static const String DB_NAME = 'todo.db';
  static const DB_VERSION = 1;
  static Database _database;

  Database get database => _database;

  TodoDatabase._internal();
  static final TodoDatabase instance = TodoDatabase._internal();

  static const initScripts = [TodoTable.CREATE_TABLE_QUERY];
  static const migrationScripts = [TodoTable.CREATE_TABLE_QUERY];

  init() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), DB_NAME),
      onCreate: (db, version) {
        initScripts.forEach((script) async => await db.execute(script));
      },
      // onUpgrade: (db, oldVersion, newVersion) {
      //   migrationScripts.forEach((script) async => await db.execute(script));
      // },
      version: DB_VERSION,
    );
  }
}
