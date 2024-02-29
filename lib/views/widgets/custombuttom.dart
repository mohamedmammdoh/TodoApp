import 'package:flutter/material.dart';
import 'package:todoapp/constants.dart';

class custombuttom extends StatelessWidget {
  const custombuttom({
    super.key,
    required this.buttomname,
    required this.ontap,
  });
  final String buttomname;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kprimary_color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
