import 'package:flutter/material.dart';
import 'package:todoapp/views/widgets/CustomAppbar.dart';
import 'package:todoapp/views/widgets/customtextformfield.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController title_controller = TextEditingController();
    TextEditingController content_controller = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          right: 8.0,
          left: 8.0,
          top: 50,
        ),
        child: Column(
          children: [
            customappbar(
              icon: Icons.done,
              onpresed: () {},
              tilte: 'Edie Notes',
            ),
            const SizedBox(height: 45),
            customtextformfield(
              validator: (p0) {
                return 'change your edit';
              },
              hint_text: 'title',
              controller: title_controller,
            ),
            const SizedBox(height: 40),
            customtextformfield(
              validator: (p0) {
                return 'change your edit';
              },
              hint_text: 'Content',
              controller: content_controller,
              maxlines: 8,
            ),
          ],
        ),
      ),
    );
  }
}
