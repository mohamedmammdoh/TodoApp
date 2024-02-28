import 'package:flutter/material.dart';
import 'package:todoapp/views/widgets/NotesViewBody.dart';
import 'package:todoapp/views/widgets/showmodelbottonsheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            context: context,
            builder: (context) {
              return const showmodelbottonsheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Notes',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  color: Colors.white,
                  Icons.search,
                  size: 28,
                )),
          )
        ],
      ),
      body: const NoteViewBody(),
    );
  }
}
