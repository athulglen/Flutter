import 'package:sqflite/sqflite.dart' as sql;
class SQLDATABASE {
static Future<sql.Database> createDB() async {
    return sql.openDatabase('datauser.db', version: 1,
        onCreate: (sql.Database db, int version) async {
      await createTable(db);
    });
  }
  static Future<void> createTable(sql.Database db) async {
    await db.execute("""CREATE TABLE user(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
        cname TEXT,
        cemail TEXT,
        cpassword TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )""");
  }
  static  Future<int> create_user(String name, String email, String password) async{
  final db = await SQLDATABASE.createDB();
  final data = {'cname': name, 'cemail': email,'cpassword': password};
    final id = await db.insert('user', data);
    return id;
  }
  static Future<List<Map>> CheckLogin(String email, String password) async{
     final db = await SQLDATABASE.createDB();
     final data = await db.rawQuery("SELECT * FROM user WHERE cemail= '$email' AND cpassword= '$password'");
     print(data.toString());
     if(data.isNotEmpty){
      return data;
     }
     return data;
  }

  static Future<void> Deleteuser(int id) async{
    final db = await SQLDATABASE.createDB();
    db.delete('user',where: 'id = ?',whereArgs: [id]);
  }

  static Future<List<Map>> getAll() async{
     final db = await SQLDATABASE.createDB();
     final data = db.rawQuery("SELECT * FROM user");
     return data;
  }

  static Edituser(int id) {}
}