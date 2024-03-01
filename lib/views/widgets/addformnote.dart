import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:todoapp/views/widgets/custombuttom.dart';
import 'package:todoapp/views/widgets/customtextformfield.dart';

class AddFormNote extends StatelessWidget {
  AddFormNote({super.key});
  final GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController title_controller = TextEditingController();
  TextEditingController content_controller = TextEditingController();
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          customtextformfield(
            validator: (p0) {
              if (p0!.isEmpty) {
                return 'enter your title';
              }
            },
            controller: title_controller,
            hint_text: 'title',
            onSaved: (p0) {
              title = p0;
            },
          ),
          const SizedBox(height: 30),
          customtextformfield(
            validator: (p0) {
              if (p0!.isEmpty) {
                return 'enter your content';
              }
            },
            controller: content_controller,
            hint_text: 'content',
            maxlines: 5,
            onSaved: (p0) {
              subtitle = p0;
            },
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 50.0, right: 5, left: 5, bottom: 20),
            child: custombuttom(
              buttomname: 'Add',
              ontap: () {
                if (formkey.currentState!.validate()) {}
              },
            ),
          ),
        ],
      ),
    );
  }
}
