import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todoapp/constants.dart';
import 'package:todoapp/cubit/addnote_cubit/addnote_cubit.dart';
import 'package:todoapp/models/Notemodel.dart';
import 'package:todoapp/views/NotesViews.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knotebox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const TodoApp());
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddnoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: const NotesView(),
      ),
    );
  }
}
