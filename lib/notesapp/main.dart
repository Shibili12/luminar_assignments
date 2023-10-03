import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:luminar_assignments/notesapp/homepage.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('Notes App Box');
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreenNotesApp(),
  ));
}
