import 'package:hive/hive.dart';
part 'todomodel.g.dart';

@HiveType(typeId: 1)
class Todo {
  @HiveField(0)
  final String taskname;
  @HiveField(1)
  final String taskcontent;
  @HiveField(2)
  String? id;
  Todo({
    required this.taskname,
    required this.taskcontent,
  }) {
    id = DateTime.now().microsecondsSinceEpoch.toString();
  }
}
