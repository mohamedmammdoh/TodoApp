import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoapp/views/widgets/custombuttom.dart';
import 'package:todoapp/views/widgets/customtextformfield.dart';

class showmodelbottonsheet extends StatelessWidget {
  const showmodelbottonsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0, right: 15, left: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const customtextformfield(
              hint_text: 'title',
            ),
            const SizedBox(height: 30),
            const customtextformfield(
              hint_text: 'content',
              maxlines: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50.0, right: 5, left: 5, bottom: 20),
              child: custombuttom(
                buttomname: 'Add',
                ontap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
