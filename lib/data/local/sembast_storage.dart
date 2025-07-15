import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';

class SembastStorage {
  static final SembastStorage _instance = SembastStorage._internal();
  late final Database db;

  SembastStorage._internal();

  static SembastStorage get instance => _instance;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    final dbPath = join(dir.path, 'repositories.db');
    db = await databaseFactoryIo.openDatabase(dbPath);
  }

  Database get database => db;
}
