import 'package:flutter/material.dart';
import 'package:todoapp/views/widgets/customtextformfield.dart';

class showmodelbottonsheet extends StatelessWidget {
  const showmodelbottonsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0, right: 15, left: 15),
      child: ListView(
        children: [
          Column(
            children: [
              customtextformfield(hint_text: 'title'),
              SizedBox(height: 30),
              customtextformfield(hint_text: 'content'),
            ],
          ),
        ],
      ),
    );
  }
}
