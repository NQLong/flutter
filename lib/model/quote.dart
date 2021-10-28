import 'package:floor/floor.dart';

@entity
class Quote {
  @primaryKey
  final int id;

  @ColumnInfo(name: 'text')
  final String text;

  @ColumnInfo(name: 'author')
  final String author;

  Quote({required this.id, required this.text, required this.author});
}

@dao
abstract class QuoteDao {
  @Query('SELECT * FROM Person')
  Future<List<Quote>> all();

  @Query('SELECT * FROM Person WHERE id = :id')
  Stream<Quote?> get(int id);

  @insert
  Future<void> insertPerson(Quote person);
}
