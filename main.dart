import 'package:flutter/material.dart';
import 'package:todo/new_note.dart';
import 'package:todo/notes_page.dart';
import 'database_helper.dart';
import 'notes_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DBHelper.createDB();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  //test test
  //test test
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Notes(),
    );
  }
}
