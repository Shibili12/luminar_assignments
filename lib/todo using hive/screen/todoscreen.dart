import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:luminar_assignments/todo%20using%20hive/database/hivedb.dart';
import 'package:luminar_assignments/todo%20using%20hive/model/todomodel.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //to connnet widget tree to flutter engine
  await Hive.initFlutter(); //to initialize hive in flutter
  Hive.registerAdapter(TodoAdapter());
  await Hive.openBox<Todo>('tasks');
  runApp(MaterialApp(
    home: Todohome(),
  ));
}

class Todohome extends StatelessWidget {
  Todohome({super.key});
  List<Map<String, dynamic>> tasklist = [];
  final taskcontroller = TextEditingController();
  final contentcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tasklist.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return ListTile();
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showtask(context, null);
        },
      ),
    );
  }

  void showtask(BuildContext context, int? itemkey) {
    if (itemkey != null) {
      final existingtask =
          tasklist.firstWhere((element) => element['id'] == itemkey);
      taskcontroller.text = existingtask['taskname'];
      contentcontroller.text = existingtask['taskcontent'];
    }
    showBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom + 120,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: taskcontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Task name",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: contentcontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Task content",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (taskcontroller.text != "" &&
                      contentcontroller.text != "") {
                    if (itemkey == null) {
                      // tasklist =await  HiveDb.instance.addTask(itemkey);
                    } else {
                      updateTask(itemkey, {
                        'name': taskcontroller.text.trim(),
                        'content': contentcontroller.text.trim(),
                      });
                    }
                  }
                  taskcontroller.text = "";
                  contentcontroller.text = "";
                  Navigator.pop(context);
                },
                child: Text(itemkey == null ? "create" : "update"),
              )
            ],
          ),
        );
      },
    );
  }

  void createTask(Map<String, String> map) {}

  void updateTask(int itemkey, Map<String, String> map) {}
}
