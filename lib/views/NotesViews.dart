import 'package:flutter/material.dart';
import 'package:todoapp/views/widgets/CustomAppbar.dart';
import 'package:todoapp/views/widgets/NotesViewBody.dart';
import 'package:todoapp/views/widgets/showmodelbottonsheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 50),
        child: Column(
          children: [
            customappbar(
              icon: Icons.search,
              onpresed: () {},
              tilte: 'Notes',
            ),
            const Expanded(child: NoteViewBody()),
          ],
        ),
      ),
    );
  }
}
