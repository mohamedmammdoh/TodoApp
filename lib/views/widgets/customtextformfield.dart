import 'package:flutter/material.dart';
import 'package:todoapp/constants.dart';

class customtextformfield extends StatelessWidget {
  customtextformfield({
    super.key,
    required this.hint_text,
    this.maxlines,
    required this.controller,
    required this.validator,
  });
  final String hint_text;
  final int? maxlines;
  TextEditingController controller = TextEditingController();
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
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
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kprimary_color,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        hintText: hint_text,
      ),
    );
  }
}
