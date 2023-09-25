class HiveDb{

  HiveDb,internal();

  static HiveDb instance = HiveDb.internal();

  HiveDb() {          //factory constructor for creating singleton class (these class have only one instance)
    return instance;
  }

  //add user email and password to hive db
  Future<void>addUser(User user) async{
    final db = await Hive.openBox<User>('UserData');
    db.put(user.id,user);

  }

  //read user datas from hive db

Future<List<User>> getUser() async{
    final db= await Hive.openBox<User>('userData');
    return db.values.toList();

}
}