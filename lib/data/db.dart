import 'dart:async';
import 'package:floor/floor.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:quotes/model/quote.dart';

part 'db.g.dart'; // the generated code will be there

@Database(version: 1, entities: [Quote])
abstract class AppDatabase extends FloorDatabase {
  QuoteDao get quoteDao;
}
