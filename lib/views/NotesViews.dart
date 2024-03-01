import 'package:flutter/material.dart';
import 'package:todoapp/views/widgets/NotesViewBody.dart';
import 'package:todoapp/views/widgets/listviewfornotes.dart';
import 'package:todoapp/views/widgets/showmodelbottonsheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notes',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.3),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 28,
                  ),
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white.withOpacity(0.2),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const showmodelbottonsheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 28,
        ),
      ),
      body: NoteViewBody(),
    );
  }
}
