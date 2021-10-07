import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart'; //Obrigatorio

//Cria o banco de dados
void createDatabase() {
  getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'bytebank.db');
    openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE contacts('
          'id INT PRIMARY KEY,'
          'name TEXT,'
          'account_number INT)');
    }, version: 1);
  });
}
