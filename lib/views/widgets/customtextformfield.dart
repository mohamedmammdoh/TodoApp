import 'package:flutter/material.dart';
import 'package:todoapp/constants.dart';

class customtextformfield extends StatelessWidget {
  const customtextformfield(
      {super.key, required this.hint_text, this.maxlines});
  final String hint_text;
  final int? maxlines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      cursorColor: kprimary_color,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kprimary_color,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        hintText: hint_text,
      ),
    );
  }
}