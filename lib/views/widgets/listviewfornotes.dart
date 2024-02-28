import 'package:flutter/material.dart';
import 'package:todoapp/views/widgets/CustomNoteTitle.dart';

class listviewfornotes extends StatelessWidget {
  const listviewfornotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CustomNoteTitle();
      },
    );
  }
}
