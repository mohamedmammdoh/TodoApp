import 'package:flutter/material.dart';
import 'package:todoapp/views/widgets/customtextformfield.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Notes',
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
                    Icons.done,
                    color: Colors.white,
                    size: 28,
                  ),
                )),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 100.0, right: 10, left: 10),
        child: Column(
          children: [
            customtextformfield(hint_text: 'title'),
            SizedBox(height: 40),
            customtextformfield(
              hint_text: 'Content',
              maxlines: 8,
            ),
          ],
        ),
      ),
    );
  }
}
