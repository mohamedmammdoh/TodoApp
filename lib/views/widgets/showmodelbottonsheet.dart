import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoapp/views/widgets/custombuttom.dart';
import 'package:todoapp/views/widgets/customtextformfield.dart';

class showmodelbottonsheet extends StatelessWidget {
  const showmodelbottonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formkey = GlobalKey();
    TextEditingController title_controller = TextEditingController();
    TextEditingController content_controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(top: 32.0, right: 15, left: 15),
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              customtextformfield(
                validator: (p0) {
                  return 'enter your title';
                },
                controller: title_controller,
                hint_text: 'title',
              ),
              const SizedBox(height: 30),
              customtextformfield(
                validator: (p0) {
                  return 'enter your content';
                },
                controller: content_controller,
                hint_text: 'content',
                maxlines: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 50.0, right: 5, left: 5, bottom: 20),
                child: custombuttom(
                  buttomname: 'Add',
                  ontap: () {
                    if (formkey.currentState!.validate()) {}
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
