import 'package:flutter/material.dart';
import 'package:todoapp/views/widgets/CustomAppbar.dart';
import 'package:todoapp/views/widgets/customtextformfield.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key});

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  TextEditingController title_controller = TextEditingController();
  TextEditingController content_controller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          right: 8.0,
          left: 8.0,
          top: 50,
        ),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              customappbar(
                icon: Icons.done,
                onpresed: () {
                  if (formkey.currentState!.validate()) {}
                },
                tilte: 'Edie Notes',
              ),
              const SizedBox(height: 45),
              customtextformfield(
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return 'change your edit';
                  }
                },
                hint_text: 'title',
                controller: title_controller,
                onSaved: (p0) {
                  title = p0;
                },
              ),
              const SizedBox(height: 40),
              customtextformfield(
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return 'change your edit';
                  }
                },
                hint_text: 'Content',
                controller: content_controller,
                maxlines: 8,
                onSaved: (p0) {
                  subtitle = p0;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
