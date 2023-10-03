import 'package:hive/hive.dart';
import 'package:luminar_assignments/todo%20using%20hive/model/todomodel.dart';

class HiveDb {
  HiveDb.internal();
  static HiveDb instance = HiveDb.internal();
  factory HiveDb() {
    return instance;
  }

  Future<List<Todo>> getTask() async {
    final db = await Hive.openBox<Todo>('tasks');
    return db.values.toList();
  }

  Future<void> addTask(Todo todo) async {
    final db = await Hive.openBox<Todo>('tasks');
    db.put(todo.id, todo);
  }
}
